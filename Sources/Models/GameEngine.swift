class GameEngine {
    var state: GameState

    init(initialState: GameState) {
        self.state = initialState
    }

    func availableActions() -> [Action] {
        var actions: [Action] = []

        // Movement options
        let pos = state.player.position
        if pos.y + 1 <= state.mapBounds.maxY { actions.append(.move(.north)) }
        if pos.y - 1 >= state.mapBounds.minY { actions.append(.move(.south)) }
        if pos.x + 1 <= state.mapBounds.maxX { actions.append(.move(.east)) }
        if pos.x - 1 >= state.mapBounds.minX { actions.append(.move(.west)) }

        let nearbyCreatures = state.creatures.filter {
            $0 !== state.player &&
            abs($0.position.x - pos.x) == 0 &&
            abs($0.position.y - pos.y) == 0
        }

        for creature in nearbyCreatures {
            // Only allow attack if hostile
            if creature.behavior == .hostile {
                actions.append(.attack(target: creature))
            }
            
            // Only allow talk if on same tile (for now)
            if creature.position == pos {
                actions.append(.talk(to: creature))
            }
        }

        // Location at current position
        if let location = state.locations.first(where: { $0.position == pos }) {
            actions.append(.examine(location: location))
        }

        // Always allow checking status and exiting
        actions.append(.status)
        actions.append(.exit)

        return actions
    }

    func perform(_ action: Action) -> String {
        switch action {
        case .move(let direction):
            return state.player.move(in: direction, mapBounds: state.mapBounds)
        case .talk(let creature):
            return "You talk to \(creature.name). They look at you curiously."
        case .attack(let creature):
            // For now, simple fixed damage
            let damage = 10
            creature.health -= damage
            let result = "\(state.player.name) attacks \(creature.name) for \(damage) damage."
            let healthStatus = creature.health > 0 ? "\(creature.name) has \(creature.health) health left." : "\(creature.name) has been defeated!"
            return "\(result) \(healthStatus)"
        case .examine(let location):
            return "You examine the area: \(location.name). It's quite interesting."
        case .status:
            return state.player.announceHealth()
        case .exit:
            state.isGameOver = true
            return "Thanks for playing! Goodbye!"
        }
    }
    
    func updateCreatures() -> [String] {
        var events: [String] = []

        for creature in state.creatures where creature !== state.player && creature.health > 0 {
            
            guard creature.behavior == .hostile else {
                // Passive creatures do nothing (for now)
                continue
            }
            
            let cPos = creature.position
            let pPos = state.player.position

            if cPos == pPos {
                // Attack!
                let damage = 5
                state.player.health -= damage
                let attackMessage = "\(creature.name) attacks you for \(damage) damage!"
                events.append(attackMessage)

                if state.player.health <= 0 {
                    events.append("You have been defeated!")
                    state.isGameOver = true
                    break
                }
            } else if let direction = directionToward(from: cPos, to: pPos) {
                // Try to move toward player
                let before = creature.position
                _ = creature.move(in: direction, mapBounds: state.mapBounds)
                let after = creature.position
                if before != after {
                    events.append("\(creature.name) moves \(direction.rawValue).")
                }
            }
        }

        return events
    }

}
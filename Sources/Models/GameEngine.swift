class GameEngine {
    var state: GameState

    init(initialState: GameState) {
        self.state = initialState
    }

    func getAvailableActions() -> [Action] {
        // Container of available actions.
        var actions: [Action] = []

        // Get available movement actions.
        let pos: (x: Int, y: Int) = state.player.position
        if pos.y + 1 <= state.mapBounds.maxY { actions.append(.move(.north)) }
        if pos.y - 1 >= state.mapBounds.minY { actions.append(.move(.south)) }
        if pos.x + 1 <= state.mapBounds.maxX { actions.append(.move(.east)) }
        if pos.x - 1 >= state.mapBounds.minX { actions.append(.move(.west)) }

        // Get nearby creatures (same position as player).
        let nearbyCreatures: [Creature] = state.creatures.filter {
            $0 !== state.player && abs($0.position.x - pos.x) == 0
                && abs($0.position.y - pos.y) == 0
        }
        
        // Get available actions for nearby creatures.
        for creature: Creature in nearbyCreatures {
            if creature.behavior == .hostile {
                actions.append(.attack(target: creature))
            }
            if creature.position == pos {
                actions.append(.talk(to: creature))
            }
        }

        // Get available actions for the current location.
        if let location: Location = state.locations.first(where: { $0.position == pos }) {
            actions.append(.examine(location: location))
        }

        // Always available: Checking player status and quitting the game.
        actions.append(.status)
        actions.append(.exit)

        return actions
    }

    func perform(_ action: Action) -> String {
        switch action {
        
        case .move(let direction):
            return state.player.move(in: direction, mapBounds: state.mapBounds)
        
        case .talk(let creature):
            /*
                I'm thinking the way we handle this is also through a scene, like
                an engagement between two creatures. So we might want to make a new
                concept called a GameScene, which would have a name, a container of creatures
                who are part of the scene, etc.
            */
            return "You talk to \(creature.name). They look at you curiously."
        
        case .attack(let creature):
            /* 
                For this section I'm thinking we could insert some logic
                in here for like a combat engagement like in a JRPG. And 
                that could conceptually be a different scene.
            */
            let damage: Int = 10
            creature.health -= damage
            let result: String = "\(state.player.name) attacks \(creature.name) for \(damage) damage."
            let healthStatus: String =
                creature.health > 0
                ? "\(creature.name) has \(creature.health) health left."
                : "\(creature.name) has been defeated!"
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
}
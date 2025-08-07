class GameEngine {
    var state: GameState

    init(initialState: GameState) {
        self.state = initialState
    }

    func listAvailableActions() -> [Action] {
        var actions: [Action] = []

        // Movement
        actions.append(.move(.north))
        actions.append(.move(.south))
        actions.append(.move(.east))
        actions.append(.move(.west))

        // Menu stuff
        actions.append(.location)
        actions.append(.status)
        actions.append(.exit)

        let pos: (x: Int, y: Int) = state.player.position

        let nearbyCreatures: [Creature] = state.creatures.filter {
            $0 !== state.player && abs($0.position.x - pos.x) == 0
                && abs($0.position.y - pos.y) == 0
        }

        for creature: Creature in nearbyCreatures {
            if creature.behavior == .hostile {
                actions.append(.attack(target: creature))
            }
            if creature.position == pos {
                actions.append(.talk(to: creature))
            }
        }

        if let location: Location = state.locations.first(where: { $0.position == pos }) {
            actions.append(.examine(location: location))
        }

        return actions
    }

    func perform(_ action: Action) -> String {
        switch action {

        case .move(let direction):
            return state.player.move(in: direction)

        case .talk(let creature):
            return "You talk to \(creature.name). They look at you curiously."

        case .attack(let creature):
            return "You make a sneering face at \(creature.name)."

        case .examine(let location):
            return "You examine the area: \(location.name). It's quite interesting."

        case .location:
            return state.player.getPosition()

        case .status:
            return state.player.announceHealth()

        case .exit:
            state.isGameOver = true
            return "Thanks for playing! Goodbye!"
        }
    }
}

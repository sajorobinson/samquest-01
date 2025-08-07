class GameEngine {
    var state: GameState

    init(initialState: GameState) {
        self.state = initialState
    }

    func listAvailableActions() -> [Action] {
        var actions: [Action] = []

        // Movement

        // Menu stuff
        actions.append(.status)
        actions.append(.exit)

        return actions
    }

    func perform(_ action: Action) -> String {
        switch action {

        case .talk(let creature):
            return "You talk to \(creature.name). They look at you curiously."

        case .attack(let creature):
            return "You make a sneering face at \(creature.name)."

        case .status:
            return state.player.announceHealth()

        case .exit:
            state.isGameOver = true
            return "Thanks for playing! Goodbye!"
        }
    }
}

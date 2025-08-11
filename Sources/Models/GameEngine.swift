class GameEngine {
    var state: GameState

    init(initialState: GameState) {
        self.state = initialState
    }

    func listAvailableActions() -> [Action] {
        var actions: [Action] = []
        actions.append(.examine)
        actions.append(.check)
        actions.append(.exit)
        return actions
    }

    func listExaminableTargets() {
        // What would you like to examine?
    }

    func perform(_ action: Action) -> String {
        switch action {
        case .examine:
            return "A location description."
        case .check:
            return state.player.describeHealth()
        case .talk:
            return "You talk to the creature. They look at you curiously."
        case .attack:
            return "You make a sneering face at the creature."
        case .exit:
            state.isGameOver = true
            return "Thanks for playing! Goodbye!"
        }
    }
}

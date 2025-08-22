class GameEngine {
    var state: GameState
    var isGameOver: Bool = false

    init(initialState: GameState) {
        self.state = initialState
    }

    func listAvailableActions() -> [Action] {
        var actions: [Action] = []
        actions.append(.examine)
        actions.append(.check)
        actions.append(.talk)
        actions.append(.attack)
        actions.append(.exit)
        return actions
    }

    func perform(_ action: Action) -> String {
        switch action {
        case .examine:
            let scene = Scene(type: .examine)
            return GameManager.handleExamineScene(scene: scene, state: state)
        case .check:
            let scene = Scene(type: .check)
            return GameManager.handleCheckScene(scene: scene, state: state)
        case .talk:
            let scene = Scene(type: .talk)
            return GameManager.handleTalkScene(scene: scene, state: state)
        case .attack:
            let scene = Scene(type: .attack)
            return GameManager.handleAttackScene(scene: scene, state: state)
        case .exit:
            self.isGameOver = true
            return "Thanks for playing! Goodbye!"
        }
    }
}

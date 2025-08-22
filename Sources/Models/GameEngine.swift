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

    func listEntities() -> [Entity] {
        return state.entities
    }

    func listEntitiesExamine() -> [HasDescription] {
        return state.entities.compactMap { $0 as HasDescription }
    }

    func perform(_ action: Action) -> String {
        switch action {
        case .examine:
            let scene = Scene(
                sceneType: .examine,
            )
            return GameManager.handleExamineScene(scene: scene, state: state)
        case .check:
            return state.player.getHealth()
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

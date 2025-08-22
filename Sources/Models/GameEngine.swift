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
        return state.entities.compactMap { $0 as? HasDescription }
    }

    func perform(_ action: Action) -> String {
        switch action {
        case .examine:
            let scene = Scene(
                name: "Examining something",
                entities: listEntities(),
                sceneType: .examine,
            )
            while !scene.isSceneOver {
                print("Choose something to examine:")
                for (i, entity) in scene.entities.enumerated() {
                    print("[\(i + 1)] \(entity.name)")
                }
                print("INPUT: ", terminator: "")
                guard
                    let input = readLine(),
                    let choice = Int(input),
                    (1...scene.entities.count).contains(choice)
                else {
                    print("Invalid input. Please enter a number from the list.")
                    continue
                }
                let target = scene.entities[choice - 1]
                let result = target.getName()
                return result
            }
            return "Everything seems fine."
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

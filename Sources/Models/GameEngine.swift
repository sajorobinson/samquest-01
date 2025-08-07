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

    func perform(_ action: Action) -> String {
        switch action {
        case .examine:
            // Location examination scene.
            /*
                Thinking conceptually for all scenes, we have some things to consider:
            
                1. Who started the scene? The player or an NPC (random encounter)?
                2. Who is involved in the scene? The player, allies of the player, an enemy, etc?
                3. What can you do in the scene? This is dependent on the Scene.sceneType.
                    And honestly each scene will probably need to just be a new class & inherit the Scene class.
            
                This information is like the "scene resources", we're gathering everything up that the
                scene needs to play out.
            
                Then, the engine can run the scene, giving each creature a turn and an opportunity
                to make a decision.
            */
            return "A location description."
        case .check:
            // Player stats & health scene
            return state.player.announceHealth()
        case .talk:
            // Conversation scene
            return "You talk to the creature. They look at you curiously."
        case .attack:
            // Combat scene
            return "You make a sneering face at the creature."
        case .exit:
            state.isGameOver = true
            return "Thanks for playing! Goodbye!"
        }
    }
}

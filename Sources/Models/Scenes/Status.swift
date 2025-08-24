struct Status: Scene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        let player = state.playerCharacter

        if let location = state.locations.first(where: {
            $0.x == player.posX && $0.y == player.posY
        }) {
            return """
                Your health: \(state.playerCharacter.getHealth())
                Your position: x: \(player.posX), y: \(player.posY)
                Location: \(location.name)
                Description: \(location.description)
                """
        }

        return """
            Your health: \(state.playerCharacter.getHealth())
            x: \(player.posX), y: \(player.posY)
            "There's nothing here."
            """
    }
}

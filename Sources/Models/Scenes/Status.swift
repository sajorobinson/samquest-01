struct Status: Scene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        var payloadContainer: [String] = []
        let player = state.playerCharacter

        payloadContainer.append("Your health: \(state.playerCharacter.health)")
        payloadContainer.append("x: \(player.posX), y: \(player.posY)")

        if let location = state.locations.first(where: {
            $0.x == player.posX && $0.y == player.posY
        }) {
            payloadContainer.append("Location: \(location.name)")
            payloadContainer.append("Description: \(location.description)")
        } else {
            payloadContainer.append("There's nothing here.")
        }
        return payloadContainer.joined(separator: "\n")
    }
}

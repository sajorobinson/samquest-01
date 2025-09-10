struct Status: Scene {
    
    var isSceneOver: Bool = false

    mutating func run(with state: inout GameState) -> String {
        var payloadContainer: [String] = []

        let player = state.playerCharacter
        
        payloadContainer.append(
            "Your health: \(state.playerCharacter.entityHealth.value)"
        )
        
        payloadContainer.append(
            "x: \(player.entityPosition.x), y: \(player.entityPosition.y)"
        )
        


        if let location = state.locations.first(
            where: {
            $0.x == player.entityPosition.x && $0.y == player.entityPosition.y
        }) {
            payloadContainer.append("Location: \(location.name)")
            payloadContainer.append("Description: \(location.description)")
        } else {
            payloadContainer.append("There's nothing here.")
        }

        return payloadContainer.joined(separator: "\n")
    }
}

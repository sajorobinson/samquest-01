struct LocateScene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        for location in state.locations {
            if state.playerCharacter.posX == location.x
                && state.playerCharacter.posY == location.y
            {
                let result = """
                    x: \(state.playerCharacter.posX), y: \(state.playerCharacter.posY)
                    Location: \(location.name)
                    Description: \(location.description)
                    """
                return result
            } else {
                continue
            }
        }
        return
            "x: \(state.playerCharacter.posX), y: \(state.playerCharacter.posY). There's nothing here."
    }
}

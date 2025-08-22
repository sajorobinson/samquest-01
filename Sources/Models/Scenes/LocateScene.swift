struct LocateScene: CanRunScene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        let result = """
            Your location: \(state.playerCharacter.location.getName())
            Description: \(state.playerCharacter.location.getDescription())
            """
        return result
    }
}

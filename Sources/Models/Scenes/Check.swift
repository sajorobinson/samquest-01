struct Check: Scene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        return "Your health: \(state.playerCharacter.getHealth())"
    }
}

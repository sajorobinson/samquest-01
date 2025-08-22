struct AttackScene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        return "You hurt yourself in confusion! \(state.playerCharacter.changeHealth(by: -10))."
    }
}

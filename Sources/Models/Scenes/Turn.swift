struct Turn: Scene {
    var isSceneOver: Bool = false

    mutating func run(with state: inout GameState) -> String {
        return "blep"
    }
}

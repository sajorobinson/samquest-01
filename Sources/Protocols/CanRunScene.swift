protocol CanRunScene {
    var isSceneOver: Bool { get }
    mutating func run(with state: inout GameState) -> String
}

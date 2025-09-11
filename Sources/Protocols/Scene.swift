protocol Scene {
    var isSceneOver: Bool { get set }
    mutating func run(with state: inout GameState) -> String
}

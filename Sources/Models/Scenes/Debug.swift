struct Debug: Scene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        print("Debug menu")
        let choice = Utilities.InputOutput.readInput()
        switch choice.lowercased() {
        case "pe":
            let results = Utilities.Debug.listEntities(with: state).joined(separator: "\n")
            return results
        case "pl":
            let results = Utilities.Debug.listLocations(with: state).joined(separator: "\n")
            return results
        default:
            return "Invalid input."
        }
    }
}

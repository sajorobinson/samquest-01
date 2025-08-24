struct Debug: Scene {
    var isSceneOver: Bool = false
    var debugUserInterface: String {
        """
        Select a debug command
        | pe = print all entities | pl = print all locations |
        | x = cancel  |
        """
    }
    mutating func run(with state: inout GameState) -> String {
        print(debugUserInterface)
        let choice = Utilities.InputOutput.readInput()
        if choice.lowercased() == "pe" {
            let results = Utilities.Debug.listEntities(with: state).joined(separator: "\n")
            return results
        } else if choice.lowercased() == "pl" {
            let results = Utilities.Debug.listLocations(with: state).joined(separator: "\n")
            return results
        } else if choice.lowercased() == "x" {
            return "Debug canceled."
        } else {
            return "Invalid input. Debug canceled."
        }
    }
}

struct ExamineScene: CanRunScene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {
            print("Choose something to examine.")
            for (i, entity) in state.entities.enumerated() {
                print("[\(i + 1)] \(entity.name)")
            }
            print("INPUT: ", terminator: "")
            guard
                let input = readLine(),
                let choice = Int(input),
                (1...state.entities.count).contains(choice)
            else {
                print("Invalid input. Please enter a number from the list.")
                continue
            }
            let target = state.entities[choice - 1]
            let result = target.getDescription()
            return result
        }
        return "Default description."
    }
}

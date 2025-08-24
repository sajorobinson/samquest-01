struct Move: Scene {
    var isSceneOver: Bool = false
    var moveUserInterface: String {
        """
        Which direction do you want to move?
        | w = north  | a = west | s = south | d = east |
        | x = cancel |
        """
    }
    mutating func run(with state: inout GameState) -> String {
        print(moveUserInterface)
        let choice = Utilities.InputOutput.readInput()
        if choice.lowercased() == "w" {
            return state.playerCharacter.changePosition(x: 0, y: 1)
        } else if choice.lowercased() == "a" {
            return state.playerCharacter.changePosition(x: -1, y: 0)
        } else if choice.lowercased() == "s" {
            return state.playerCharacter.changePosition(x: -0, y: -1)
        } else if choice.lowercased() == "d" {
            return state.playerCharacter.changePosition(x: 1, y: 0)
        } else if choice.lowercased() == "x" {
            return "Movement canceled."
        } else {
            print("Invalid input. Movement canceled.")
        }
        return "Default movement."
    }
}

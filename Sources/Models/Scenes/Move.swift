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
            state.playerCharacter.posY += 1
            return state.playerCharacter.getPosition()
        } else if choice.lowercased() == "a" {
            state.playerCharacter.posX += -1
            return state.playerCharacter.getPosition()
        } else if choice.lowercased() == "s" {
            state.playerCharacter.posY += -1
            return state.playerCharacter.getPosition()
        } else if choice.lowercased() == "d" {
            state.playerCharacter.posX += 1
            return state.playerCharacter.getPosition()
        } else if choice.lowercased() == "x" {
            return "Movement canceled."
        } else {
            print("Invalid input. Movement canceled.")
        }
        return "Default movement."
    }
}

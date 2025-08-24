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
        if choice.capitalized == "W" {
            state.playerCharacter.posY += 1
            return state.playerCharacter.getPosition()
        } else if choice.capitalized == "A" {
            state.playerCharacter.posX += -1
            return state.playerCharacter.getPosition()
        } else if choice.capitalized == "S" {
            state.playerCharacter.posY += -1
            return state.playerCharacter.getPosition()
        } else if choice.capitalized == "D" {
            state.playerCharacter.posX += 1
            return state.playerCharacter.getPosition()
        } else if choice.capitalized == "X" {
            return "Movement canceled."
        } else {
            print("Invalid input. Movement canceled.")
        }
        return "Default movement."
    }
}

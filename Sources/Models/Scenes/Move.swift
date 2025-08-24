struct Move: Scene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        print("Which direction do you want to move?")
        print("| w = north  | a = west | s = south | d = east |")
        print("| x = cancel |")

        let choice = Bureaucrat.CommunicationsBureau.readInput()

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

struct MoveScene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {
            print("Which way do you want to go?")
            let directions = Direction.listDirections()
            for (i, direction) in directions.enumerated() {
                print("[\(i + 1)] \(direction)")
            }
            print("INPUT: ", terminator: "")
            guard
                let input = readLine(),
                let choice = Int(input),
                (1...directions.count).contains(choice)
            else {
                print("Invalid input. Please enter a number from the list.")
                continue
            }
            let direction = directions[choice - 1]

            if direction == .north {
                state.playerCharacter.posY += 1
                return "You move north."
            } else if direction == .south {
                state.playerCharacter.posY += -1
                return "You move south."
            } else if direction == .east {
                state.playerCharacter.posX += 1
                return "You move east."
            } else if direction == .west {
                state.playerCharacter.posX += -1
                return "You move west."
            } else {
                state.playerCharacter.posX += 0
                state.playerCharacter.posY += 0
                return "You stand still."
            }
        }
        return "Default movement."
    }
}

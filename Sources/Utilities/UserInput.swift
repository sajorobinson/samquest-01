enum UserInput: String {
    // Movement commands
    case north = "w"
    case south = "s"
    case west = "a"
    case east = "d"

    // Action commands
    case status = "j"
    case examine = "i"
    case attack = "k"
    case talk = "l"

    // Utility commands
    case help = "help"
    case exit = "exit"
}

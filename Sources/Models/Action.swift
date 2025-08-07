enum Action {
    case examine
    case check
    case talk
    case attack
    case exit

    var description: String {
        switch self {
        case .examine: return "Examine this location."
        case .check: return "Check yourself."
        case .talk: return "Talk to creature."
        case .attack: return "Attack creature."
        case .exit: return "Exit game."
        }
    }
}

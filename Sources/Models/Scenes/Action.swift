enum Action: CaseIterable {
    case check
    case locate
    case move
    case examine
    case talk
    case attack
    case exit

    var description: String {
        switch self {
        case .check: return "Check"
        case .locate: return "Locate"
        case .move: return "Move"
        case .examine: return "Examine"
        case .talk: return "Talk"
        case .attack: return "Attack"
        case .exit: return "Exit"
        }
    }

    static func listActions() -> [Action] {
        var actions: [Action] = []
        for action in Action.allCases {
            actions.append(action)
        }
        return actions
    }
}

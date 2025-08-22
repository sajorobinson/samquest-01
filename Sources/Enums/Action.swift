enum Action: CaseIterable {
    case examine
    case check
    case talk
    case attack
    case exit

    var description: String {
        switch self {
        case .examine: return "Examine"
        case .check: return "Check"
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

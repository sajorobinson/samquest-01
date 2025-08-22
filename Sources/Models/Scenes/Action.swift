enum Action: CaseIterable {
    case examine
    case check
    case talk
    case attack
    case exit
    case locate

    var description: String {
        switch self {
        case .examine: return "Examine"
        case .check: return "Check"
        case .talk: return "Talk"
        case .attack: return "Attack"
        case .exit: return "Exit"
        case .locate: return "Locate"
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

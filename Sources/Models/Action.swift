enum Action {
    case talk(to: Creature)
    case attack(target: Creature)
    case status
    case exit

    var description: String {
        switch self {
        case .talk(let creature): return "Talk to \(creature.name)"
        case .attack(let creature): return "Attack \(creature.name)"
        case .status: return "Check Status"
        case .exit: return "Exit Game"
        }
    }
}

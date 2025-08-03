enum Action {
    case move(Direction)
    case talk(to: Creature)
    case attack(target: Creature)
    case examine(location: Location)
    case status
    case exit

    var description: String {
        switch self {
        case .move(let dir): return "Move \(dir.rawValue.capitalized)"
        case .talk(let creature): return "Talk to \(creature.name)"
        case .attack(let creature): return "Attack \(creature.name)"
        case .examine(let location): return "Examine \(location.name)"
        case .status: return "Check Status"
        case .exit: return "Exit Game"
        }
    }
}
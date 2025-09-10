enum Verb: String {
    case attack = "attack"
    case examine = "examine"
    case talk = "speak with"
}

struct Phrases {
    static var defaultResponse: String {
        "Default response"
    }
    static func chooseTo(_ verb: Verb) -> String {
        return "Choose something to \(verb)."
    }
    static func nothingTo(_ verb: Verb) -> String {
        return "There's nothing to \(verb) here."
    }
    static func youAttack(_ target: Entity, _ damage: Int) -> String {
        return "You attack \(target.name), dealing \(damage) damage."
    }
}

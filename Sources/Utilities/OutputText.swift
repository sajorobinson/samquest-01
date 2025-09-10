enum Verb: String {
    
    case attack = "attack"
    case examine = "examine"
    case talk = "speak with"
    
}

struct OutputText {
    
    static var menuHelpText: String {
        """
        SamQuest01 - Commands
        w - move north    j - status       help
        a - move west     i - examine      exit
        s - move south    k - attack       debug
        d - move east     l = talk
        """
    }
    
    static var defaultResponseText: String {
        "Default response"
    }
    
    static func chooseTo(_ verb: Verb) -> String {
        return "Choose something to \(verb)."
    }
    
    static func nothingTo(_ verb: Verb) -> String {
        return "There's nothing to \(verb) here."
    }
    
    static func youAttack(_ target: Entity, _ damage: Int) -> String {
        return "You attack \(target.entityName.value), dealing \(damage) damage."
    }
    
}

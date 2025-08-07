class Creature: Decodable {
    var isPlayer: Bool = false
    var name: String
    var health: Int
    var behavior: Behavior
    var gender: Gender

    init(isPlayer: Bool, name: String, health: Int, behavior: Behavior, gender: Gender) {
        self.isPlayer = isPlayer
        self.name = name
        self.health = health
        self.behavior = behavior
        self.gender = gender
    }

    func announceHealth() -> String {
        return "\(name)'s health: \(health)"
    }

    func says() -> String {
        let things: [String] = [
            "Hello!",
            "How are you?",
            "Nice day we're having.",
            "Oh no! A pink giraffe!",
        ]
        let something: String = things.randomElement() ?? "Sorry, I didn't quite catch that."
        return something
    }
}

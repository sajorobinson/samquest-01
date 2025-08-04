class Creature {
    var name: String
    var health: Int
    var position: (x: Int, y: Int)
    var behavior: Behavior

    init(name: String, health: Int, position: (x: Int, y: Int), behavior: Behavior) {
        self.name = name
        self.health = health
        self.position = position
        self.behavior = behavior
    }

    func announceHealth() -> String {
        return "\(name)'s health: \(health)"
    }
}
class Player: HasName, HasHealth, HasDescription, HasBehavior, CanSpeak, CanMove {
    var name: String
    var health: Int
    var description: String
    var behavior: Behavior

    init(name: String, health: Int, description: String, behavior: Behavior) {
        self.name = name
        self.health = health
        self.description = description
        self.behavior = behavior
    }
}

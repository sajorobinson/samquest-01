class Character: Entity, HasHealth, HasDescription, HasBehavior, CanSpeak {
    var health: Int
    var description: String
    var behavior: Behavior

    init(name: String, health: Int, description: String, behavior: Behavior) {
        self.health = health
        self.description = description
        self.behavior = behavior
        super.init(name: name)
    }
}

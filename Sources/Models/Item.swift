class Item: Entity, HasHealth, HasDescription {
    var health: Int
    var description: String

    init(name: String, health: Int, description: String) {
        self.health = health
        self.description = description
        super.init(name: name)
    }
}

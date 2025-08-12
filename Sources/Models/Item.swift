struct Item: HasName, HasHealth, HasDescription {
    var name: String
    var health: Int
    var description: String

    init(name: String, health: Int, description: String) {
        self.name = name
        self.health = health
        self.description = description
    }
}

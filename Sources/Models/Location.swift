class Location: Entity {
    var description: String
    var items: [Item] = []
    var exits: [Direction: Location] = [:]

    init(name: String, description: String) {
        self.description = description
        super.init(name: name)
    }
}

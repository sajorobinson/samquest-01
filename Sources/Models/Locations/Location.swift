class Location {
    var name: String
    var description: String
    var exits: [Direction: Location] = [:]

    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}

struct Location {
    let name: String
    let description: String
    var exits: [Direction: Location] = [:]

    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}

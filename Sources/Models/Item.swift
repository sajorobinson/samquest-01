struct Item: Examinable {
    var name: String
    var description: String

    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}

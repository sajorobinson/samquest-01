struct Location: Examinable {
    var name: String
    var description: String
    var items: [Item] = []
    var exits: [Direction: Location] = [:]

    init(name: String, description: String) {
        self.name = name
        self.description = description
    }

    mutating func clutter() {
        let item1 = Item(name: "A book", description: "Just a normal book.")
        let item2 = Item(name: "An apple", description: "A red apple.")
        let item3 = Item(name: "A picture of Jiji", description: "It's Jiji!")
        self.items.append(item1)
        self.items.append(item2)
        self.items.append(item3)
    }
}

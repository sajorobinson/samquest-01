extension Entity {
    static var book: Entity {
        Entity(
            name: "The End of August",
            type: .item,
            initialHealthLevel: .low1,
            description: "A book written by the author Yu Miri",
            behavior: .passive,
            posX: 0,
            posY: 0
        )
    }
}

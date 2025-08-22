extension Entity {
    static var book: Entity {
        Entity(
            name: "The End of August",
            type: .item,
            health: 5,
            description: "A book written by the author Yu Miri",
            behavior: .passive,
            posX: 0,
            posY: 0
        )
    }
}

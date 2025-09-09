extension Entity {
    static var book: Entity {
        Entity(
            name: "The End of August",
            description: "A book written by the author Yu Miri",
            type: .item,
            behavior: .passive,
            stats: EntityStats.basic,
            health: 100,
            posX: 0,
            posY: 0
        )
    }
}

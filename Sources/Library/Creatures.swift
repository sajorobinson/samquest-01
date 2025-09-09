extension Entity {
    static var goblin: Entity {
        Entity(
            name: "Goblin",
            description: "A friendly goblin.",
            type: .creature,
            behavior: .passive,
            stats: EntityStats.basic,
            health: 100,
            posX: Int.random(min: 0, max: 5),
            posY: Int.random(min: 0, max: 5)
        )
    }
}

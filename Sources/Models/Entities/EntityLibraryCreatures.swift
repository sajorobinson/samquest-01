extension Entity {
    static var goblin: Entity {
        Entity(
            name: "Goblin",
            type: .creature,
            health: 5,
            description: "A friendly goblin.",
            behavior: .passive,
            posX: 0,
            posY: 1
        )
    }
}

extension Entity {
    static var goblin: Entity {
        Entity(
            name: "Goblin",
            type: .creature,
            initialHealthLevel: .medium2,
            description: "A friendly goblin.",
            behavior: .passive,
            posX: Utilities.Math.rng(min: 0, max: 5),
            posY: Utilities.Math.rng(min: 0, max: 5)
        )
    }
}

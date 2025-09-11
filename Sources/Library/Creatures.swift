extension Entity {
    static var goblin: Entity {
        Entity(
            EntityName("Goblin"),
            EntityDescription("A friendly goblin."),
            EntityPosition(
                x: Int.random(min: 0, max: 5),
                y: Int.random(min: 0, max: 5)
            ),
            .character
        )
    }
}

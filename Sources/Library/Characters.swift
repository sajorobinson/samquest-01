extension Entity {
    static var player: Entity {
        Entity(
            name: "Sam",
            description: "The main character of this game.",
            type: .character,
            behavior: .passive,
            stats: EntityStats.basic,
            health: 100,
            posX: 0,
            posY: 0
        )
    }

    static var author: Entity {
        Entity(
            name: "Yu Miri",
            description: "The author of the novel 'The End of August'.",
            type: .character,
            behavior: .passive,
            stats: EntityStats.basic,
            health: 100,
            posX: 0,
            posY: 0
        )
    }
}

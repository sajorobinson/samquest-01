extension Entity {
    static var player: Entity {
        Entity(
            name: "Sam",
            type: .character,
            health: 100,
            description: "The main character of this game.",
            behavior: .passive,
            posX: 0,
            posY: 0
        )
    }

    static var author: Entity {
        Entity(
            name: "Yu Miri",
            type: .character,
            health: 100,
            description: "The author of the novel 'The End of August'.",
            behavior: .passive,
            posX: 0,
            posY: 0
        )
    }
}

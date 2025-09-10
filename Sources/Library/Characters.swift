extension Entity {
    static var player: Entity {
        Entity(
            entityName: EntityName(
                first: "Sam",
                last: "Robinson"
            ),
            entityDescription: EntityDescription(
                text: "The main character of this game."
            ),
            entityType: .character,
            entityBehavior: .passive,
            entityAttributes: EntityAttributes.basic,
            entitySkills: EntitySkills.basic,
            entityPosition: EntityPosition(x: 0, y: 0),
            entityHealth: EntityHealth.high
        )
    }

    static var author: Entity {
        Entity(
            entityName: EntityName(
                first: "Yu",
                last: "Miri"
            ),
            entityDescription: EntityDescription(
                text: "The author of the book 'The End of August'."
            ),
            entityType: .character,
            entityBehavior: .passive,
            entityAttributes: EntityAttributes.basic,
            entitySkills: EntitySkills.basic,
            entityPosition: EntityPosition(x: 0, y: 0),
            entityHealth: EntityHealth.high
        )
    }
}

extension Entity {
    static var book: Entity {
        Entity(
            entityName: EntityName(
                first: "The End of August",
                last: ""
            ),
            entityDescription: EntityDescription(
                text: "A book written by the author Yu Miri"
            ),
            entityType: .item,
            entityBehavior: .passive,
            entityAttributes: EntityAttributes.basic,
            entitySkills: EntitySkills.basic,
            entityPosition: EntityPosition(
                x: 0,
                y: 0
            ),
            entityHealth: EntityHealth.low
        )
    }
}

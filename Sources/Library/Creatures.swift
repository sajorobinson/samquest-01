extension Entity {
    static var goblin: Entity {
        Entity(
            entityName: EntityName(
                first: "Goblin",
                last: ""
            ),
            entityDescription: EntityDescription(
                text: "A friendly goblin."
            ),
            entityType: .character,
            entityBehavior: .passive,
            entityAttributes: EntityAttributes.basic,
            entitySkills: EntitySkills.basic,
            entityPosition: EntityPosition(
                x: Int.random(min:0, max:5),
                y: Int.random(min: 0, max: 5)
            ),
            entityHealth: EntityHealth.medium
        )
    }
}

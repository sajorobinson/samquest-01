extension Entity {
    
    static var book: Entity {
        Entity(
            entityName: EntityName(value: "The End of August"),
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
    
    static var map: Entity {
        Entity(
            entityName: EntityName(value: "Map"),
            entityDescription: EntityDescription(
                text: "This map leads to buried treasure."
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

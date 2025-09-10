extension Entity {
    
    static var book: Entity {
        Entity(
            entityName: EntityName(value: "The End of August"),
            entityDescription: EntityDescription(
                text: "A book written by the author Yu Miri"
            ),
            entityType: .item,
            entityAttributes: EntityAttributes.basic,
            entityPosition: EntityPosition(
                x: 0,
                y: 0
            )
        )
    }
    
    static var map: Entity {
        Entity(
            entityName: EntityName(value: "Map"),
            entityDescription: EntityDescription(
                text: "This map leads to buried treasure."
            ),
            entityType: .item,
            entityAttributes: EntityAttributes.basic,
            entityPosition: EntityPosition(
                x: 0,
                y: 0
            )
        )
    }
    
}

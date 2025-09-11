extension Entity {
    
    static var goblin: Entity {
        
        Entity(
            
            entityName: EntityName(value: "Goblin"),
            
            entityDescription: EntityDescription(
                
                text: "A friendly goblin."
                
            ),
            
            entityType: .character,
            
            entityPosition: EntityPosition(
                
                x: Int.random(min:0, max:5),
                
                y: Int.random(min: 0, max: 5)
                
            ),
            
        )
        
    }
    
}

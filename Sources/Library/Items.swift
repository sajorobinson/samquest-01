extension Entity {
    
    static var book: Entity {
        
        Entity(
        
            entityName: EntityName("The End of August"),
            
            entityDescription: EntityDescription(
            
                "A book written by the author Yu Miri"
            
            ),
            
            entityType: .item,
            
            entityPosition: EntityPosition(
            
                x: 0,
                
                y: 0
            
            )
            
        )
        
    }
    
    static var map: Entity {
        
        Entity(
        
            entityName: EntityName("Map"),
            
            entityDescription: EntityDescription(
                
                "This map leads to buried treasure."
            
            ),
            
            entityType: .item,
            
            entityPosition: EntityPosition(
            
                x: 0,
                
                y: 0
            
            )
            
        )
        
    }
    
}

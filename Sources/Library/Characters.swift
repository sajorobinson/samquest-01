extension Entity {
    
    static var player: Entity {
        
        Entity(
            
            entityName: EntityName("Sam Robinson"),
            
            entityDescription: EntityDescription(
                
                "The main character of this game."
                
            ),
            
            entityType: .character,
            
            entityPosition: EntityPosition(x: 0, y: 0)
            
        )
        
    }
    
    static var author: Entity {
        
        Entity(
            
            entityName: EntityName("Yu Miri"),
            
            entityDescription: EntityDescription(
            
                "The author of the book 'The End of August'."
            
            ),
            
            entityType: .character,
            
            entityPosition: EntityPosition(x: 0, y: 0)
            
        )
        
    }
        
}

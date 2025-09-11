extension Entity {
    
    static var player: Entity {
        
        Entity(
            
            entityName: EntityName(value: "Sam Robinson"),
            
            entityDescription: EntityDescription(
                
                text: "The main character of this game."
                
            ),
            
            entityType: .character,
            
            entityPosition: EntityPosition(x: 0, y: 0)
            
        )
        
    }
    
    static var author: Entity {
        
        Entity(
            
            entityName: EntityName(value: "Yu Miri"),
            
            entityDescription: EntityDescription(
                
                text: "The author of the book 'The End of August'."
                
            ),
            
            entityType: .character,
            
            entityPosition: EntityPosition(x: 0, y: 0)
            
        )
        
    }
    
}

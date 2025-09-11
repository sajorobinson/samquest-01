extension Entity {
    
    static var player: Entity {
        
        Entity(
            
            EntityName("Sam Robinson"),
            
            EntityDescription("The main character of this game."),
            
            EntityPosition(x: 0, y: 0),
            
            .character
        
        )
        
    }
    
    static var author: Entity {
        
        Entity(
            
            EntityName("Yu Miri"),
            
            EntityDescription("The author of the book 'The End of August'."),
            
            EntityPosition(x: 0, y: 0),

            .character
            
        )
        
    }
        
}

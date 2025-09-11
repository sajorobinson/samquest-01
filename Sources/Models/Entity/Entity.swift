import Foundation

final class Entity {
    
    private(set) var entityName: EntityName
    
    private(set) var entityDescription: EntityDescription
    
    private(set) var entityType: EntityType
    
    private(set) var entityPosition: EntityPosition
    
    init(
    
        entityName: EntityName,
        
        entityDescription: EntityDescription,
        
        entityType: EntityType,
        
        entityPosition: EntityPosition
    
    ) {
        
        self.entityName = entityName
        
        self.entityDescription = entityDescription
        
        self.entityType = entityType
        
        self.entityPosition = entityPosition
        
    }
        
    // MARK: Name, description, & type
    
    func setEntityNameValue(_ newValue: String) {
        
        entityName.value = newValue
        
    }
    
    
    func setEntityDescriptionValue(_ newValue: String) {
        
        entityDescription.value = newValue
        
    }
    
        
    func setEntityType(_ newValue: EntityType) {
        
        entityType = newValue
        
    }
    
    
    // MARK: Position
    
    func setEntityPosition(_ newValue: EntityPosition) {
        
        entityPosition = newValue
        
    }
    
    
    func changeEntityPosition(x deltaX: Int, y deltaY: Int) {
        
        entityPosition.x += deltaX
        
        entityPosition.y += deltaY
        
    }
    
    
    // MARK: Future features below
    
    func speak() -> String {
        
        switch entityType {
            
        case .creature:
            
            return "\(entityName.value) looks at you quizzically."
            
        case .item:
            
            return "\(entityName.value) is an inanimate object and can't speak."
            
        default:
            
            let things = [
                
                "Hello!",
                
                "How are you?",
                
                "Nice day we're having.",
                
                "Oh no! A pink giraffe!",
                
                "Talkin' never did me good.",
                
            ]
            
            return things.randomElement() ?? "Sorry, I didn't quite catch that."
            
        }
        
    }
    
}

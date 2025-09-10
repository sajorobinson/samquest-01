import Foundation

final class Entity {
    
    private(set) var entityName: EntityName
    private(set) var entityDescription: EntityDescription
    private(set) var entityType: EntityType
    private(set) var entityAttributes: EntityAttributes
    private(set) var entityPosition: EntityPosition
    
    init(
        entityName: EntityName,
        entityDescription: EntityDescription,
        entityType: EntityType,
        entityAttributes: EntityAttributes,
        entityPosition: EntityPosition
    ) {
        self.entityName = entityName
        self.entityDescription = entityDescription
        self.entityType = entityType
        self.entityAttributes = entityAttributes
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
    
    // MARK: Attributes
    
    func setEntityAttributes(_ newValue: EntityAttributes) {
        entityAttributes = newValue
    }
    
    func setEntityAttributesStrength(_ newValue: Int) {
        entityAttributes.strength = newValue
    }
    
    func setEntityAttributesAgility(_ newValue: Int) {
        entityAttributes.agility = newValue
    }
    
    func setEntityAttributesMystique(_ newValue: Int) {
        entityAttributes.mystique = newValue
    }
    
    func setEntityAttributesUnderstanding(_ newValue: Int) {
        entityAttributes.understanding = newValue
    }
    
    func setEntityAttributesEndurance(_ newValue: Int) {
        entityAttributes.endurance = newValue
    }
    
    func setEntityAttributesLogic(_ newValue: Int) {
        entityAttributes.logic = newValue
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

import Foundation

final class Entity {
    
    private(set) var entityName: EntityName
    private(set) var entityDescription: EntityDescription
    private(set) var entityType: EntityType
    private(set) var entityBehavior: EntityBehavior
    private(set) var entityAttributes: EntityAttributes
    private(set) var entitySkills: EntitySkills
    private(set) var entityPosition: EntityPosition
    private(set) var entityHealth: EntityHealth
    
    init(
        entityName: EntityName,
        entityDescription: EntityDescription,
        entityType: EntityType,
        entityBehavior: EntityBehavior,
        entityAttributes: EntityAttributes,
        entitySkills: EntitySkills,
        entityPosition: EntityPosition,
        entityHealth: EntityHealth
    ) {
        self.entityName = entityName
        self.entityDescription = entityDescription
        self.entityType = entityType
        self.entityBehavior = entityBehavior
        self.entityAttributes = entityAttributes
        self.entitySkills = entitySkills
        self.entityPosition = entityPosition
        self.entityHealth = entityHealth
    }
    
    // MARK: Name & description
    
    func setEntityNameValue(_ newValue: String) {
        entityName.value = newValue
    }
    
    func setEntityDescriptionValue(_ newValue: String) {
        entityDescription.value = newValue
    }
    
    // MARK: Type & behavior
    
    func setEntityType(_ newValue: EntityType) {
        entityType = newValue
    }
    
    func setEntityBehavior(_ newValue: EntityBehavior) {
        entityBehavior = newValue
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
    
    // MARK: Skills
    
    func setEntitySkills(_ newValue: EntitySkills) {
        entitySkills = newValue
    }
    
    // MARK: Position
    
    func setEntityPosition(_ newValue: EntityPosition) {
        entityPosition = newValue
    }
    
    func changeEntityPosition(x deltaX: Int, y deltaY: Int) {
        entityPosition.x += deltaX
        entityPosition.y += deltaY
    }
    
    // MARK: Health
    
    func setEntityHealth(_ newValue: EntityHealth) {
        entityHealth = newValue
    }
    
    func changeEntityHealthValue(_ delta: Int){
        entityHealth.value += delta
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

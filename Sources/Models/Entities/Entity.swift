import Foundation

class Entity {
    var name: String
    var type: EntityType
    var health: Int
    var description: String
    var behavior: EntityBehavior
    var posX: Int
    var posY: Int

    init(
        name: String,
        type: EntityType,
        health: Int,
        description: String,
        behavior: EntityBehavior,
        posX: Int,
        posY: Int
    ) {
        self.name = name
        self.type = type
        self.health = health
        self.description = description
        self.behavior = behavior
        self.posX = posX
        self.posY = posY
    }

    func getName() -> String {
        return self.name
    }

    func changeName(to newName: String) -> String {
        self.name = newName
        return getName()
    }

    func getType() -> String {
        return "\(self.type)"
    }

    func changeType(to newType: EntityType) -> String {
        self.type = newType
        return getType()
    }

    func getHealth() -> String {
        return "\(self.health)"
    }

    func changeHealth(by amount: Int) -> String {
        self.health += amount
        return getHealth()
    }

    func getDescription() -> String {
        return self.description
    }

    func changeDescription(to newDescription: String) -> String {
        self.description = newDescription
        return getDescription()
    }

    func getBehavior() -> String {
        return "\(self.behavior)"
    }

    func changeBehavior(to newBehavior: EntityBehavior) -> String {
        self.behavior = newBehavior
        return getBehavior()
    }

    func getPosition() -> String {
        return "x: \(self.posX), y: \(self.posY)"
    }

    func changePosition(x: Int, y: Int) -> String {
        self.posX += x
        self.posY += y
        return getPosition()
    }

    func speak() -> String {
        if self.type == .creature {
            return "The \(self.getName()) looks at you quizzically."
        } else if self.type == .item {
            return "The \(self.getName()) is an inanimate object and can't speak."
        } else {
            let things: [String] = [
                "Hello!",
                "How are you?",
                "Nice day we're having.",
                "Oh no! A pink giraffe!",
            ]
            let something: String = things.randomElement() ?? "Sorry, I didn't quite catch that."
            return something
        }
    }
}

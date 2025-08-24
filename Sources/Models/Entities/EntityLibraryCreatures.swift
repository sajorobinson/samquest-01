import Foundation

extension Entity {
    static var goblin: Entity {
        Entity(
            name: "Goblin",
            type: .creature,
            health: 5,
            description: "A friendly goblin.",
            behavior: .passive,
            posX: Int.random(in: 1..<5),
            posY: Int.random(in: 1..<5)
        )
    }
}

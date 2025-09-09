import Foundation

class Entity {
    private var _name: String
    private var _description: String
    private var _type: EntityType
    private var _behavior: EntityBehavior
    private var _stats: EntityStats
    private var _health: Int
    private var _posX: Int
    private var _posY: Int

    init(
        name: String,
        description: String,
        type: EntityType,
        behavior: EntityBehavior,
        stats: EntityStats,
        health: Int,
        posX: Int,
        posY: Int
    ) {
        self._name = name
        self._description = description
        self._type = type
        self._behavior = behavior
        self._stats = stats
        self._health = health
        self._posX = posX
        self._posY = posY
    }

    // Entity name and description

    var name: String {
        get { _name }
        set { _name = newValue }
    }

    var descriptionText: String {
        get { _description }
        set { _description = newValue }
    }

    // Entity type

    var type: EntityType {
        get { _type }
        set { _type = newValue }
    }

    var typeString: String {
        return "\(_type)"
    }

    // Entity behavior

    var behavior: EntityBehavior {
        get { _behavior }
        set { _behavior = newValue }
    }

    // Entity stats

    var stats: EntityStats {
        get { _stats }
        set { _stats = newValue }
    }

    // Health logic

    var health: Int {
        get { _health }
        set { _health = newValue }
    }

    var healthString: String {
        return "\(_health)"
    }

    func changeHealth(by amount: Int) {
        _health = _health + amount
    }

    // Position and movement

    var posX: Int {
        get { _posX }
        set { _posX = newValue }
    }

    var posY: Int {
        get { _posY }
        set { _posY = newValue }
    }

    var position: (x: Int, y: Int) {
        get { (_posX, _posY) }
        set { (_posX, _posY) = (newValue.x, newValue.y) }
    }

    var positionString: String {
        return "x: \(_posX), y: \(_posY)"
    }

    func moveBy(x deltaX: Int, y deltaY: Int) {
        _posX += deltaX
        _posY += deltaY
    }

    // Speech

    func speak() -> String {
        switch _type {
        case .creature:
            return "\(name) looks at you quizzically."
        case .item:
            return "\(name) is an inanimate object and can't speak."
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

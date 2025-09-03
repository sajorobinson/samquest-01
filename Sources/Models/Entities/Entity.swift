// Entity will grow larger!
// It will look real nice when it's done.
// That's a good plan, general.

import Foundation

class Entity {
    private var _name: String
    private var _type: EntityType
    private var _initialHealthLevel: InitialHealthLevel
    private var _health: Int
    private var _description: String
    private var _behavior: EntityBehavior
    private var _posX: Int
    private var _posY: Int

    init(
        name: String,
        type: EntityType,
        initialHealthLevel: InitialHealthLevel,
        description: String,
        behavior: EntityBehavior,
        posX: Int,
        posY: Int
    ) {
        self._name = name
        self._type = type
        self._initialHealthLevel = initialHealthLevel
        self._health = initialHealthLevel.defaultValue
        self._description = description
        self._behavior = behavior
        self._posX = posX
        self._posY = posY
    }

    // Core entity properties

    var name: String {
        get { _name }
        set { _name = newValue }
    }

    var type: EntityType {
        get { _type }
        set { _type = newValue }
    }

    var typeString: String {
        return "\(_type)"
    }

    var descriptionText: String {
        get { _description }
        set { _description = newValue }
    }

    var behavior: EntityBehavior {
        get { _behavior }
        set { _behavior = newValue }
    }

    // Health logic

    var initialHealthLevel: InitialHealthLevel {
        get { _initialHealthLevel }
        set {
            _initialHealthLevel = newValue
            _health = newValue.defaultValue
        }
    }

    var health: Int {
        get { _health }
        set { _health = clampHealth(newValue) }
    }

    var maxHealth: Int {
        return _initialHealthLevel.defaultValue
    }

    var healthString: String {
        return "\(_health)/\(maxHealth)"
    }

    func changeHealth(by amount: Int) {
        _health = clampHealth(_health + amount)
    }

    private func clampHealth(_ value: Int) -> Int {
        return max(0, min(value, maxHealth))
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

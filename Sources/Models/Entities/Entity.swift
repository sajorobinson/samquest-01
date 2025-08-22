import Foundation

class Entity: HasName, HasHealth, HasDescription, HasBehavior {
    var name: String
    var health: Int
    var description: String
    var behavior: Behavior
    var location: Location = Location.villageSquare

    init(
        name: String,
        health: Int,
        description: String,
        behavior: Behavior,
        location: Location
    ) {
        self.name = name
        self.health = health
        self.description = description
        self.behavior = behavior
        self.location = location
    }
}

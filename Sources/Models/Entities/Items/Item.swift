class Item: Entity {
    override init(
        name: String,
        health: Int,
        description: String,
        behavior: Behavior,
        location: Location
    ) {
        super.init(
            name: name,
            health: health,
            description: description,
            behavior: behavior,
            location: location
        )
    }
}

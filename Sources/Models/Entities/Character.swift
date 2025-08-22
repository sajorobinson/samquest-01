class Character: Entity, CanMove, CanSpeak {
    override init(name: String, health: Int, description: String, behavior: Behavior) {
        super.init(
            name: name,
            health: health,
            description: description,
            behavior: behavior
        )
    }
}

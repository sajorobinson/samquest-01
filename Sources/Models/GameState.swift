struct GameState {
    var player: Creature
    var creatures: [Creature]
    var locations: [Location]
    var isGameOver: Bool = false

    init(player: Creature, creatures: [Creature], locations: [Location], isGameOver: Bool) {
        self.player = player
        self.creatures = creatures
        self.locations = locations
        self.isGameOver = isGameOver
    }
}

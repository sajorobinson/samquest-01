struct GameState {
    var player: Player
    var creatures: [Creature]
    var locations: [Location]
    var isGameOver: Bool = false

    init(player: Player, creatures: [Creature], locations: [Location], isGameOver: Bool) {
        self.player = player
        self.creatures = creatures
        self.locations = locations
        self.isGameOver = isGameOver
    }
}

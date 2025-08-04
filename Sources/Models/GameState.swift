struct GameState {
    var player: Player
    var creatures: [Creature]
    var locations: [Location]
    var isGameOver: Bool = false
    var mapBounds: MapBounds

    init(player: Player, creatures: [Creature], locations: [Location], isGameOver: Bool, mapBounds: MapBounds) {
        self.player = player
        self.creatures = creatures
        self.locations = locations
        self.isGameOver = isGameOver
        self.mapBounds = mapBounds
    }
}
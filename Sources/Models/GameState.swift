struct GameState {
    var player: Creature
    var creatures: [Creature]
    var locations: [Location]
    var isGameOver: Bool = false
    var mapBounds: MapBounds
}
struct GameState {
    var player: Player
    var creatures: [Creature]
    var locations: [Location]
    var isGameOver: Bool = false
    var mapBounds: MapBounds
}
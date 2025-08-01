struct GameState {
    var player: Creature
    var creatures: [Creature]
    var locations: [Location]
    var isGameOver: Bool = false
    var mapBounds: (minX: Int, maxX: Int, minY: Int, maxY: Int)
}
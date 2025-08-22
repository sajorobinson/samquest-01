struct GameState {
    var player: Player
    var entities: [Entity]
    var locations: [Location]
    var isGameOver: Bool = false

    init(player: Player, entities: [Entity], locations: [Location], isGameOver: Bool) {
        self.player = player
        self.entities = entities
        self.locations = locations
        self.isGameOver = isGameOver
    }
}

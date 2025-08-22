struct GameState {
    var player: Character
    var entities: [Entity]
    var locations: [Location]

    init(player: Character, entities: [Entity], locations: [Location]) {
        self.player = player
        self.entities = entities
        self.locations = locations
    }
}

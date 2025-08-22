struct GameState {
    var playerCharacter: Entity
    var entities: [Entity]
    var locations: [Location]

    init(playerCharacter: Entity, entities: [Entity], locations: [Location]) {
        self.playerCharacter = playerCharacter
        self.entities = entities
        self.locations = locations
    }
}

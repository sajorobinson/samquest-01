struct GameState {
    var playerCharacter: Character
    var entities: [Entity]
    var locations: [Location]

    init(playerCharacter: Character, entities: [Entity], locations: [Location]) {
        self.playerCharacter = playerCharacter
        self.entities = entities
        self.locations = locations
    }
}

enum Manager {
    static func createGameState() -> GameState {
        let playerCharacter: Character = Character.player
        let characters: [Character] = Factory.spawnCharacters()
        let creatures: [Creature] = Factory.spawnGoblins()
        let locations: [Location] = Factory.createLocations()

        var entities: [Entity] = []
        entities += characters
        entities += creatures

        let state: GameState = GameState(
            playerCharacter: playerCharacter,
            entities: entities,
            locations: locations
        )

        return state
    }
}

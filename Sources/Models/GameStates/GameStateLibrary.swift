extension GameState {
    static var defaultGame: GameState {
        GameState(
            playerCharacter: Character.player,
            entities: Factory.spawnCharacters() + Factory.spawnGoblins(),
            locations: Factory.createLocations()
        )
    }
}

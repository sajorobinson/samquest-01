extension GameState {
    
    static var defaultGame: GameState {
        GameState(
            playerCharacter: Entity.player,
            entities: Factory.spawnCharacters()
            + Factory.spawnCreatures()
            + Factory.spawnItems(),
            locations: Factory.createLocations()
        )
    }
    
}

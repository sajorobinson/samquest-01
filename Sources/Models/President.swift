class President {
    // The President is responsible for doing stuff.
    let name: String = "President"
    func createGameState() -> GameState {
        // Creatures
        let player: Player = Player(
            name: "Sam",
            health: 100,
            position: (0, 0),
            behavior: .passive
        )
        var creatures: [Creature] = []
        creatures += CreaturesPassive.Mammals.rabbits()
        creatures += [player]
        // Locations
        let locations: [Location] = [
            Location(position: (0, 0), name: "Village Square"),
            Location(position: (0, 1), name: "Goblin Cave"),
        ]
        // Map bounds
        let mapBounds: MapBounds = Config.Map.normal
        // Put it all together
        let gameState: GameState = GameState(
            player: player,
            creatures: creatures,
            locations: locations,
            isGameOver: false,
            mapBounds: mapBounds
        )
        return gameState
    }
}
struct Dog {
    // The Dog is responsible for doing stuff.
    let name: String = "Dog"
    static func createGameState() -> GameState {
        // Creatures
        let player: Player = Player(
            name: "Sam",
            health: 100,
            position: (0, 0),
            behavior: .passive
        )
        var creatures: [Creature] = []
        creatures += CharactersPassive.Humans.spawn(count: 1)
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
    static func handleScene() {
        
    }
    // static func createScene(forMe creature: Creature) -> GameScene {
    //     let position: (x: Int, y: Int) = creature.position
    // }
    static func spawnCreatures(count: Int, factory: () -> Creature) -> [Creature] {
        var creatures: [Creature] = []
        for _ in 1...count {
            creatures.append(factory())
        }
        return creatures
    }
}
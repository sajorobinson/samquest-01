public struct GameManager {
    let name: String = "Eugene"
    static func createGameState() -> GameState {
        // Creatures
        let player: Creature = Creature(
            isPlayer: true,
            name: "Sam",
            health: 100,
            behavior: .hostile,
            gender: .man
        )
        var creatures: [Creature] = []
        creatures += [player]
        // Locations
        let locations: [Location] = [
            Location(name: "Village Square"),
            Location(name: "Goblin Cave"),
        ]
        // Put it all together
        let gameState: GameState = GameState(
            player: player,
            creatures: creatures,
            locations: locations,
            isGameOver: false
        )
        return gameState
    }
    static func spawnCreatures(count: Int, factory: () -> Creature) -> [Creature] {
        var creatures: [Creature] = []
        for _ in 1...count {
            creatures.append(factory())
        }
        return creatures
    }
}

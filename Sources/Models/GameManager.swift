public struct GameManager {
    let name: String = "Eugene"

    static func createPlayer() -> Creature {
        let player: Creature = Creature(
            isPlayer: true,
            name: "Sam",
            health: 100,
            behavior: .hostile,
            gender: .man
        )
        return player
    }

    static func createCreatures() -> [Creature] {
        let creatures: [Creature] = []
        return creatures
    }

    static func createLocations() -> [Location] {
        var locVillageSquare = Location(
            name: "Village Square",
            description: "A charming village square."
        )
        locVillageSquare.clutter()
        var locGoblinCave = Location(
            name: "Goblin Cave",
            description: "A delightful goblin cave."
        )
        locVillageSquare.exits = [.north: locGoblinCave]
        locGoblinCave.exits = [.south: locVillageSquare]
        let locations: [Location] = [
            locVillageSquare,
            locGoblinCave,
        ]
        return locations
    }

    static func createGameState() -> GameState {
        let player = createPlayer()
        var creatures = createCreatures()
        creatures += [player]
        let locations = createLocations()
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

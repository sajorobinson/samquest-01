public struct GameManager {
    let name: String = "Eugene"

    static func createPlayer() -> Player {
        let player: Player = Player(
            name: "Sam",
            health: 100,
            description: "The main character of this game.",
            behavior: .hostile,
        )
        return player
    }

    static func createCharacters() -> [Character] {
        let characters: [Character] = []
        return characters
    }

    static func createCreatures() -> [Creature] {
        let creatures: [Creature] = []
        return creatures
    }

    static func createItems() -> [Item] {
        let items: [Item] = []
        return items
    }

    static func createLocations() -> [Location] {
        var locVillageSquare = Location(
            name: "Village Square",
            description: "A charming village square."
        )
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
        var entities: [HasName] = []
        let player: Player = createPlayer()
        entities += createCreatures()
        entities += createCharacters()
        entities += createItems()
        entities += [player]

        let locations = createLocations()

        let gameState: GameState = GameState(
            player: player,
            entities: entities,
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

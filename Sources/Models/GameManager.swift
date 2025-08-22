public struct GameManager {
    let name: String = "Gemma"

    static func createPlayerCharacter() -> Character {
        let playerCharacter: Character = Character(
            name: "Sam",
            health: 100,
            description: "The main character of this game.",
            behavior: .hostile,
        )
        return playerCharacter
    }

    static func createTestCharacter() -> Character {
        let testCharacter: Character = Character(
            name: "Yu Miri",
            health: 100,
            description: "An author.",
            behavior: .hostile
        )
        return testCharacter
    }

    static func createCharacters() -> [Character] {
        let testCharacter: Character = createTestCharacter()
        var characters: [Character] = []
        characters += [testCharacter]
        return characters
    }

    static func createCreatures() -> [Creature] {
        func spawnGoblin() -> Creature {
            let goblin = Creature(
                name: "Roblin the Goblin",
                health: 10,
                description: "A really wonderful person you could get to know.",
                behavior: .passive
            )
            return goblin
        }
        var creatures: [Creature] = []
        creatures += self.spawnCreatures(count: 2, factory: spawnGoblin)
        return creatures
    }

    static func createItems() -> [Item] {
        let items: [Item] = []
        return items
    }

    static func createLocations() -> [Location] {
        let locVillageSquare = Location(
            name: "Village Square",
            description: "A charming village square."
        )
        let locGoblinCave = Location(
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
        let playerCharacter: Character = createPlayerCharacter()
        var entities: [Entity] = []
        entities += createCreatures()
        entities += createCharacters()
        entities += createItems()
        let locations = createLocations()
        let gameState: GameState = GameState(
            playerCharacter: playerCharacter,
            entities: entities,
            locations: locations,
        )
        return gameState
    }

    static func handleAttackScene(scene: Scene, state: GameState) -> String {
        return "You attack."
    }

    static func handleCheckScene(scene: Scene, state: GameState) -> String {
        return state.playerCharacter.getHealth()
    }

    static func handleExamineScene(scene: Scene, state: GameState) -> String {
        while !scene.isSceneOver {
            print("Choose something to examine:")
            for (i, entity) in state.entities.enumerated() {
                print("[\(i + 1)] \(entity.name)")
            }
            print("INPUT: ", terminator: "")
            guard
                let input = readLine(),
                let choice = Int(input),
                (1...state.entities.count).contains(choice)
            else {
                print("Invalid input. Please enter a number from the list.")
                continue
            }
            let target = state.entities[choice - 1]
            let result = target.getDescription()
            return result
        }
        return "Default description."
    }

    static func handleTalkScene(scene: Scene, state: GameState) -> String {
        return state.playerCharacter.speak()
    }

    static func spawnCreatures(count: Int, factory: () -> Creature) -> [Creature] {
        var creatures: [Creature] = []
        for _ in 1...count {
            creatures.append(factory())
        }
        return creatures
    }
}

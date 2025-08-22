enum Factory {
    /// This machine spawns things.
    static func spawn<T>(count: Int, factory: () -> T) -> [T] {
        var results: [T] = []
        for _ in 1...count {
            results.append(factory())
        }
        return results
    }

    static func createLocations() -> [Location] {
        var locations: [Location] = []
        locations += [Location.villageSquare, Location.goblinCave]
        return locations
    }

    static func spawnCharacters() -> [Character] {
        var characters: [Character] = []
        characters += [Character.author, Character.captain, Character.cuthbert]
        return characters
    }

    static func spawnGoblins() -> [Creature] {
        var creatures: [Creature] = []
        creatures += Factory.spawn(count: 2) { .goblin }
        return creatures
    }

    static func spawnItems() -> [Item] {
        var items: [Item] = []
        items += Factory.spawn(count: 1) { .rock }
        return items
    }
}

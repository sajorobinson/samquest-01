enum Factory {
    
    /// This machine spawns things.
    static func spawn<T>(count: Int, factory: () -> T) -> [T] {
        var results: [T] = []
        for _ in 1...count {
            results.append(factory())
        }
        return results
    }

    static func spawnCharacters() -> [Entity] {
        var characters: [Entity] = []
        characters += [Entity.author]
        return characters
    }

    static func spawnCreatures() -> [Entity] {
        var creatures: [Entity] = []
        let goblins: [Entity] = spawn(count: 10) { .goblin }
        creatures += goblins
        return creatures
    }

    static func spawnItems() -> [Entity] {
        var items: [Entity] = []
        items += [Entity.book]
        items += [Entity.map]
        return items
    }

    static func createLocations() -> [Location] {
        var locations: [Location] = []
        locations += [Location.villageSquare, Location.goblinCave]
        return locations
    }

}

struct GameState {
    var playerCharacter: Entity
    var entities: [Entity]
    var locations: [Location]

    init(playerCharacter: Entity, entities: [Entity], locations: [Location]) {
        self.playerCharacter = playerCharacter
        self.entities = entities
        self.locations = locations
    }
}

extension GameState {
    
    func listEntitiesAtPosition(x: Int, y: Int) -> [Entity] {
        return entities.filter { $0.entityPosition.x == x && $0.entityPosition.y == y }
    }

    func getLocationFromPosition(x: Int, y: Int) -> Location? {
        return locations.first { $0.x == x && $0.y == y }
    }

    var entitySummaries: [String] {
        entities.map { "\($0.entityName.value) : \($0.entityPosition.x) \($0.entityPosition.y)" }
    }

    var locationSummaries: [String] {
        locations.map { "\($0.name): \($0.x) \($0.y)" }
    }
}

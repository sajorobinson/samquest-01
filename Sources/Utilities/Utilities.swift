enum Utilities {

    enum Math {
        static func rng(min: Int, max: Int) -> Int {
            guard min <= max else { return max }
            return Int.random(in: min...max)
        }
    }

    enum InputOutput {
        static func readInput() -> String {
            print("INPUT: ", terminator: "")
            let input = readLine()!
            return input
        }
        static func endGame() -> Bool {
            print("Game over!")
            return true
        }
    }

    enum Entities {
        static func ruok(with state: GameState) -> Bool {
            state.playerCharacter.health > 0
        }
        static func listEntitiesAtPosition(with state: GameState, x: Int, y: Int) -> [Entity] {
            var entitiesAtPosition: [Entity] = []
            for entity in state.entities {
                if entity.posX == x && entity.posY == y {
                    entitiesAtPosition.append(entity)
                } else {
                    continue
                }
            }
            return entitiesAtPosition
        }
        static func printEntities(_ entities: [Entity]) {
            if entities.count == 0 {
                print("No entities.")
            }
            for (i, entity) in entities.enumerated() {
                print("[\(i + 1)] \(entity.name)")
            }
        }
        static func readChosenEntity(_ entities: [Entity]) -> Entity? {
            let input = Utilities.InputOutput.readInput()
            guard
                let choice = Int(input),
                (1...entities.count).contains(choice)
            else {
                print("Invalid input. Please enter a number from the list.")
                return nil
            }
            return entities[choice - 1]
        }
    }

    enum Locations {
        static func getLocationFromPosition(with state: GameState, x: Int, y: Int) -> Location? {
            for location in state.locations {
                if location.x == x && location.y == y {
                    return location
                }
            }
            return nil
        }
    }

    enum Debug {
        static func listEntities(with state: GameState) -> [String] {
            var entities: [String] = []
            for entity in state.entities {
                entities.append("\(entity.name) : \(entity.posX) \(entity.posY)")
            }
            return entities
        }
        static func listLocations(with state: GameState) -> [String] {
            var locations: [String] = []
            for location in state.locations {
                locations.append("\(location.name): \(location.x) \(location.y)")
            }
            return locations
        }
    }
}

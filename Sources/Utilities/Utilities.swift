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
            return state.entities.filter { $0.posX == x && $0.posY == y }
        }
        static func printEntities(_ entities: [Entity]) {
            guard !entities.isEmpty else {
                print("No entities.")
                return
            }
            entities.enumerated().forEach { i, entity in
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
    enum Debug {
        static func listEntities(with state: GameState) -> [String] {
            return state.entities.map { "\($0.name) : \($0.posX) \($0.posY)" }
        }
        static func listLocations(with state: GameState) -> [String] {
            return state.locations.map { "\($0.name): \($0.x) \($0.y)" }
        }
    }
    enum Locations {
        static func getLocationFromPosition(with state: GameState, x: Int, y: Int) -> Location? {
            return state.locations.first { $0.x == x && $0.y == y }
        }
    }
}

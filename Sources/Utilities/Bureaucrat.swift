// aka scene manager, but bureaucrat because he interacts w/ the state :)
// i know this is going to crazy and im going to let it happen
enum Bureaucrat {

    enum CommunicationsBureau {
        static func printUserInterface() {
            print(
                """
                SamQuest01
                | m = move   | l = locate  | t = talk   |
                | c = status | e = examine | a = attack |
                | x = exit   |
                """)
        }
        static func endGame() -> Bool {
            print("Game over!")
            return true
        }
        static func readInput() -> String {
            print("INPUT: ", terminator: "")
            let input = readLine() ?? "X"
            return input
        }
    }

    enum HealthBureau {
        static func ruok(with state: GameState) -> Bool {
            if state.playerCharacter.health <= 0 {
                return false
            } else {
                return true
            }
        }
    }

    enum PopulationsBureau {
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
            print("INPUT: ", terminator: "")
            guard
                let input = readLine(),
                let choice = Int(input),
                (1...entities.count).contains(choice)
            else {
                print("Invalid input. Please enter a number from the list.")
                return nil
            }
            return entities[choice - 1]
        }
    }

    enum CartographyBureau {
        static func getLocationFromPosition(with state: GameState, x: Int, y: Int) -> Location? {
            for location in state.locations {
                if location.x == x && location.y == y {
                    return location
                }
            }
            return nil
        }
    }
}

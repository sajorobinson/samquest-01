import Foundation

@main
struct Main {
    static func main() {
        let player: Creature = Creature(
            name: "Sam", health: 100, position: (0, 0), behavior: .passive)
        let goblin: Creature = Creature(
            name: "Goblin", health: 30, position: (0, 1), behavior: .hostile)
        let villager: Creature = Creature(
            name: "Villager", health: 100, position: (1, 0), behavior: .passive)

        let creatures = [player, goblin, villager]

        let locations = [
            Location(position: (0, 0), name: "Village Square"),
            Location(position: (0, 1), name: "Goblin Cave"),
        ]

        let initialState = GameState(
            player: player,
            creatures: creatures,
            locations: locations,
            isGameOver: false,
            mapBounds: (minX: -5, maxX: 5, minY: -5, maxY: 5)
        )

        let engine = GameEngine(initialState: initialState)

        while !engine.state.isGameOver {
            let actions = engine.availableActions()
            print("=========================")
            print("||      SamQuest01     ||")
            print("=========================")
            print("Choose an action:")
            for (i, action) in actions.enumerated() {
                print("[\(i + 1)] \(action.description)")
            }
            print("INPUT: ", terminator: "")

            if let input = readLine(), let choice = Int(input), choice > 0, choice <= actions.count
            {
                let result = engine.perform(actions[choice - 1])
                PU.d(m: result)
                let aiEvents = engine.updateCreatures()
                for event in aiEvents {
                    PU.d(m: event)
                }
            } else {
                PU.d(m: "Invalid input. Please enter a number from the list.")
            }
        }
    }
}

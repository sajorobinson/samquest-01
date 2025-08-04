import Foundation

@main
struct Main {
    static func main() {

        let initialState: GameState = President.createGameState()        
        let engine: GameEngine = GameEngine(initialState: initialState)

        while !engine.state.isGameOver {
            let actions: [Action] = engine.listAvailableActions()
            print("SamQuest01")
            print("Choose an action:")
            for (i, action) in actions.enumerated() {
                print("[\(i + 1)] \(action.description)")
            }
            print("INPUT: ", terminator: "")

            if let input: String = readLine(), let choice: Int = Int(input), choice > 0,
                choice <= actions.count
            {
                let result: String = engine.perform(actions[choice - 1])
                PresentationUtility.d(m: result)
            } else {
                PresentationUtility.d(m: "Invalid input. Please enter a number from the list.")
            }
        }
    }
}

import Foundation

@main
struct Main {
    static func main() {
        let initialState = GameManager.createGameState()
        let engine = GameEngine(initialState: initialState)
        while !engine.isGameOver {
            let actions = engine.listAvailableActions()
            print("SamQuest01")
            print("Choose an action:")
            for (i, action) in actions.enumerated() {
                print("[\(i + 1)] \(action.description)")
            }
            print("INPUT: ", terminator: "")
            guard
                let input = readLine(),
                let choice = Int(input),
                (1...actions.count).contains(choice)
            else {
                print("Invalid input. Please enter a number from the list.")
                continue
            }
            let result = engine.perform(actions[choice - 1])
            print(result)
        }
    }
}

import Foundation

@main
struct Main {
    static func main() {
        // Create a game state. TODO: Implement loading a state from a file.
        var state = GameStateCreator.createGameState()

        // Game loop
        var gameOver: Bool = false
        while !gameOver {
            print("SamQuest01")

            // List available actions & present to player.
            print("Choose an action:")
            let actions = Action.listActions()
            for (i, action) in actions.enumerated() {
                print("[\(i + 1)] \(action.description)")
            }

            // Get the player's choice of action.
            print("INPUT: ", terminator: "")
            guard
                let input = readLine(),
                let choice = Int(input),
                (1...actions.count).contains(choice)
            else {
                print("Invalid input. Please enter a number from the list.")
                continue
            }

            // Route choice of action to a scene.
            switch actions[choice - 1] {
            case .attack:
                var scene: AttackScene = AttackScene()
                print(scene.run(with: &state))
            case .check:
                var scene: CheckScene = CheckScene()
                print(scene.run(with: &state))
            case .examine:
                var scene: ExamineScene = ExamineScene()
                print(scene.run(with: &state))
            case .talk:
                var scene: TalkScene = TalkScene()
                print(scene.run(with: &state))
            case .exit:
                print("Goodbye!")
                gameOver = true
            }
        }
    }
}

import Foundation

@main
struct Main {
    static func main() {
        // Create a game state. TODO: Implement loading a state from a file.
        var state = GameState.defaultGame

        // Game loop
        var gameOver: Bool = false
        while !gameOver {
            if !Bureaucrat.ruok(with: state) {
                print("Game over!")
                gameOver = true
            } else {
                print("SamQuest01")
                print("Choose an action:")
                let sceneTypeOptions = SceneType.listSceneTypes()
                for (i, sceneTypeOption) in sceneTypeOptions.enumerated() {
                    print("[\(i + 1)] \(sceneTypeOption.description)")
                }

                print("INPUT: ", terminator: "")
                guard
                    let input = readLine(),
                    let choice = Int(input),
                    (1...sceneTypeOptions.count).contains(choice)
                else {
                    print("Invalid input. Please enter a number from the list.")
                    continue
                }

                switch sceneTypeOptions[choice - 1] {
                case .check:
                    var scene: Check = Check()
                    print(scene.run(with: &state))
                case .locate:
                    var scene: Locate = Locate()
                    print(scene.run(with: &state))
                case .move:
                    var scene: Move = Move()
                    print(scene.run(with: &state))
                case .examine:
                    var scene: Examine = Examine()
                    print(scene.run(with: &state))
                case .talk:
                    var scene: Talk = Talk()
                    print(scene.run(with: &state))
                case .attack:
                    var scene: Attack = Attack()
                    print(scene.run(with: &state))
                case .exit:
                    var scene: Exit = Exit()
                    print(scene.run(with: &state))
                    gameOver = true
                }
            }
        }
    }
}

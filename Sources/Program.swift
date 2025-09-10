import Foundation

@main
struct Main {
    static func main() {
        var state = GameState.defaultGame

        var gameOver: Bool = false

        while !gameOver {
            if !state.isPlayerAlive() {
                gameOver = Utilities.InputOutput.endGame()
            } else {
                let help = """
                    SamQuest01 - Commands
                    w - move north    j - status       help
                    a - move west     i - examine      exit
                    s - move south    k - attack       debug
                    d - move east     l = talk
                    """

                print("SamQuest01")

                let input = Utilities.InputOutput.readInput().lowercased()

                if let userInput = UserInput(rawValue: input) {
                    switch userInput {
                    case .north:
                        state.playerCharacter.moveBy(x: 0, y: 1)
                        print(state.playerCharacter.position)
                    case .west:
                        state.playerCharacter.moveBy(x: -1, y: 0)
                        print(state.playerCharacter.position)
                    case .south:
                        state.playerCharacter.moveBy(x: -0, y: -1)
                        print(state.playerCharacter.position)
                    case .east:
                        state.playerCharacter.moveBy(x: 1, y: 0)
                        print(state.playerCharacter.position)
                    case .status:
                        var scene: Status = Status()
                        print(scene.run(with: &state))
                    case .examine:
                        var scene: Examine = Examine()
                        print(scene.run(with: &state))
                    case .attack:
                        var scene: Attack = Attack()
                        print(scene.run(with: &state))
                    case .talk:
                        var scene: Talk = Talk()
                        print(scene.run(with: &state))
                    case .help:
                        print(help)
                    case .debug:
                        state.playerCharacter.changeHealth(by: 50)
                    case .exit:
                        var scene: Exit = Exit()
                        print(scene.run(with: &state))
                        gameOver = true
                    }
                } else {
                    print("Invalid input")
                    continue
                }
            }
        }
    }
}

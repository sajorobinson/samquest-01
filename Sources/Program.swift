import Foundation

@main
struct Main {
    static func main() {
        var state = GameState.defaultGame
        var gameOver: Bool = false
        while !gameOver {
            if !Utilities.Entities.ruok(with: state) {
                gameOver = Utilities.InputOutput.endGame()
            } else {
                let help = """
                    SamQuest01 - Commands
                    w - move north    j - status       h - help
                    a - move west     i - examine      x - exit
                    s - move south    k - attack       debug - debug
                    d - move east     o = talk
                    """

                print("SamQuest01")
                let input = Utilities.InputOutput.readInput()

                switch input.lowercased() {
                case "w": state.playerCharacter.moveBy(x: 0, y: 1)
                case "a": state.playerCharacter.moveBy(x: -1, y: 0)
                case "s": state.playerCharacter.moveBy(x: -0, y: -1)
                case "d": state.playerCharacter.moveBy(x: 1, y: 0)
                case "j", "status":
                    var scene: Status = Status()
                    print(scene.run(with: &state))
                case "i", "examine":
                    var scene: Examine = Examine()
                    print(scene.run(with: &state))
                case "k", "attack":
                    var scene: Attack = Attack()
                    print(scene.run(with: &state))
                case "o", "talk":
                    var scene: Talk = Talk()
                    print(scene.run(with: &state))
                case "h", "help":
                    print(help)
                case "debug":
                    var scene: Debug = Debug()
                    print(scene.run(with: &state))
                case "x", "exit", "quit":
                    var scene: Exit = Exit()
                    print(scene.run(with: &state))
                    gameOver = true
                default:
                    print("Invalid input.")
                    continue
                }
            }
        }
    }
}

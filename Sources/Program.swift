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
                print(
                    """
                    SamQuest01
                    | w = north  | a = west    | s = south | d = east   |
                    | ---------- | ----------- | --------- | ---------- |
                    | c = status | e = examine | t = talk  | k = attack |
                    | x = exit   | ? = debug   |
                    """
                )
                let input = Utilities.InputOutput.readInput()

                switch input.lowercased() {
                case "w": print(state.playerCharacter.changePosition(x: 0, y: 1))
                case "a": print(state.playerCharacter.changePosition(x: -1, y: 0))
                case "s": print(state.playerCharacter.changePosition(x: -0, y: -1))
                case "d": print(state.playerCharacter.changePosition(x: 1, y: 0))
                case "c":
                    var scene: Status = Status()
                    print(scene.run(with: &state))
                case "e":
                    var scene: Examine = Examine()
                    print(scene.run(with: &state))
                case "t":
                    var scene: Talk = Talk()
                    print(scene.run(with: &state))
                case "k":
                    var scene: Attack = Attack()
                    print(scene.run(with: &state))
                case "x":
                    var scene: Exit = Exit()
                    print(scene.run(with: &state))
                    gameOver = true
                case "?":
                    var scene: Debug = Debug()
                    print(scene.run(with: &state))
                default:
                    print("Invalid input.")
                    continue
                }
            }
        }
    }
}

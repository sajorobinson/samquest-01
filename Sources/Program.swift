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
                    | w = north | a = west | s = south | d = east |
                    |--------------------------------------------------|
                    | c = status | l = locate | e = examine | t = talk |

                     t = talk   |
                     e = examine | a = attack |
                    | x = exit   | d = debug
                    """
                )
                let input = Utilities.InputOutput.readInput()
                if input.lowercased() == "c" {
                    var scene: Status = Status()
                    print(scene.run(with: &state))
                } else if input.lowercased() == "m" {
                    var scene: Move = Move()
                    print(scene.run(with: &state))
                } else if input.lowercased() == "e" {
                    var scene: Examine = Examine()
                    print(scene.run(with: &state))
                } else if input.lowercased() == "t" {
                    var scene: Talk = Talk()
                    print(scene.run(with: &state))
                } else if input.lowercased() == "a" {
                    var scene: Attack = Attack()
                    print(scene.run(with: &state))
                } else if input.lowercased() == "x" {
                    var scene: Exit = Exit()
                    print(scene.run(with: &state))
                    gameOver = true
                } else if input.lowercased() == "d" {
                    var scene: Debug = Debug()
                    print(scene.run(with: &state))
                } else {
                    print("Invalid input.")
                    continue
                }
            }
        }
    }
}

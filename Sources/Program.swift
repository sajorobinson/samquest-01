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
                    | m = move   | l = locate  | t = talk   |
                    | c = status | e = examine | a = attack |
                    | x = exit   |
                    """
                )
                let input = Utilities.InputOutput.readInput()
                if input.lowercased() == "c" {
                    var scene: Check = Check()
                    print(scene.run(with: &state))
                } else if input.lowercased() == "l" {
                    var scene: Locate = Locate()
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
                } else {
                    print("Invalid input.")
                    continue
                }
            }
        }
    }
}

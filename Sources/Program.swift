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

                print("[1] Check")
                print("[2] Locate")
                print("[3] Move")
                print("[4] Examine")
                print("[5] Talk")
                print("[6] Attack")
                print("[7] Exit")

                print("INPUT: ", terminator: "")
                let input = readLine() ?? "1"

                if input == "1" {
                    var scene: Check = Check()
                    print(scene.run(with: &state))
                } else if input == "2" {
                    var scene: Locate = Locate()
                    print(scene.run(with: &state))
                } else if input == "3" {
                    var scene: Move = Move()
                    print(scene.run(with: &state))
                } else if input == "4" {
                    var scene: Examine = Examine()
                    print(scene.run(with: &state))
                } else if input == "5" {
                    var scene: Talk = Talk()
                    print(scene.run(with: &state))
                } else if input == "6" {
                    var scene: Attack = Attack()
                    print(scene.run(with: &state))
                } else if input == "7" {
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

import Foundation

@main
struct Main {
    static func main() {
        // Create a game state. TODO: Implement loading a state from a file.
        var state = GameState.defaultGame
        // Game loop
        var gameOver: Bool = false
        while !gameOver {
            if !Bureaucrat.HealthBureau.ruok(with: state) {
                print("Game over!")
                gameOver = true
            } else {
                print(
                    """
                    SamQuest01
                    | m = move   | l = locate  | t = talk   |
                    | c = status | e = examine | a = attack |
                    | x = exit   |
                    """)

                let input = Bureaucrat.CommunicationsBureau.readInput()

                if input.capitalized == "C" {
                    var scene: Check = Check()
                    print(scene.run(with: &state))
                } else if input.capitalized == "L" {
                    var scene: Locate = Locate()
                    print(scene.run(with: &state))
                } else if input.capitalized == "M" {
                    var scene: Move = Move()
                    print(scene.run(with: &state))
                } else if input.capitalized == "E" {
                    var scene: Examine = Examine()
                    print(scene.run(with: &state))
                } else if input.capitalized == "T" {
                    var scene: Talk = Talk()
                    print(scene.run(with: &state))
                } else if input.capitalized == "A" {
                    var scene: Attack = Attack()
                    print(scene.run(with: &state))
                } else if input.capitalized == "X" {
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

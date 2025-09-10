import Foundation

@main

struct Main {
    
    static func main() {
        
        var state = GameState.defaultGame
        var gameOver: Bool = false

        while !gameOver {
            
            print("SamQuest01")
            
            let readInput = Utilities.InputOutput.readInput().lowercased()
            
            if let userInput = UserInput(rawValue: readInput) {
                switch userInput {
                    
                case .north:
                    state.playerCharacter.changeEntityPosition(x: 0, y: 1)
                    print(state.playerCharacter.entityPosition.positionString)
                    
                case .west:
                    state.playerCharacter.changeEntityPosition(x: -1, y: 0)
                    print(state.playerCharacter.entityPosition.positionString)
                    
                case .south:
                    state.playerCharacter.changeEntityPosition(x: 0, y: -1)
                    print(state.playerCharacter.entityPosition.positionString)
                    
                case .east:
                    state.playerCharacter.changeEntityPosition(x: 1, y: 0)
                    print(state.playerCharacter.entityPosition.positionString)
                    
                case .status:
                    var scene: Status = Status()
                    print(scene.run(with: &state))
                    
                case .examine:
                    var scene: Examine = Examine()
                    print(scene.run(with: &state))
                    
                case .talk:
                    var scene: Talk = Talk()
                    print(scene.run(with: &state))
                    
                case .help:
                    print(OutputText.menuHelpText)
                    
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

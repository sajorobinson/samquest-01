struct Info: Scene {
    
    var isSceneOver: Bool = false
    
    mutating func run(with state: inout GameState) -> String {
        
        var payloadContainer: [String] = []
        
        let player = state.playerCharacter
        
        payloadContainer.append(
            
            "x: \(player.entityPosition.x), y: \(player.entityPosition.y)"
            
        )
        
        let queryResult = state.locations.first(
            
            where: {
                
                $0.x == player.entityPosition.x && $0.y == player.entityPosition.y
                
            }
            
        )
        
        if queryResult != nil {
            
            payloadContainer.append("Location: \(queryResult!.name)")
            
            payloadContainer.append("Description: \(queryResult!.description)")
            
        } else {
            
            payloadContainer.append("There's nothing here.")
            
        }
        
        return payloadContainer.joined(separator: "\n")
        
    }
    
}

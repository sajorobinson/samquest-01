struct Examine: Scene {
    
    var isSceneOver: Bool = false
    
    mutating func run(with state: inout GameState) -> String {
        
        while !self.isSceneOver {
            
            print(OutputText.chooseTo(.examine))
            
            let x = state.playerCharacter.entityPosition.x
            
            let y = state.playerCharacter.entityPosition.y
            
            let entitiesAtPosition = state.listEntitiesAtPosition(x: x,y: y)
            
            if entitiesAtPosition.count == 0 {
                
                return OutputText.nothingTo(.examine)
                
            }
            
            else {
                
                let chosenEntity = Utilities.InputOutput.chooseFromList(
                    
                    items: entitiesAtPosition,
                    
                    display: { $0.entityName.value }
                    
                )
                
                if chosenEntity != nil {
                    
                    return chosenEntity!.entityDescription.value
                    
                } else {
                    
                    continue
                    
                }
                
            }
            
        }
        
        return OutputText.defaultResponseText
        
    }
    
}

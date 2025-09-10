struct Attack: Scene {
    
    var isSceneOver: Bool = false

    mutating func run(with state: inout GameState) -> String {
        
        while !self.isSceneOver {
            
            print(OutputText.chooseTo(.attack))

            let entitiesAtPosition = state.listEntitiesAtPosition(
                x: state.playerCharacter.entityPosition.x,
                y: state.playerCharacter.entityPosition.y
            )

            if entitiesAtPosition.count == 0 {
                return OutputText.nothingTo(.attack)
            } else {
                
                if let chosenEntity = Utilities.InputOutput.chooseFromList(
                    items: entitiesAtPosition,
                    display: { $0.entityName.value }
                ) {
                    let totalDamage = Int.random(in: 1...5)
                    chosenEntity.changeEntityHealthValue(-totalDamage)
                    return OutputText.youAttack(chosenEntity, totalDamage)
                } else {
                    continue
                }
            }
        }
        return OutputText.defaultResponseMessage
    }
}

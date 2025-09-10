struct Attack: Scene {
    var isSceneOver: Bool = false

    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {

            print(Phrases.chooseTo(.attack))

            let entitiesAtPosition = state.listEntitiesAtPosition(
                x: state.playerCharacter.posX, y: state.playerCharacter.posY)

            if entitiesAtPosition.count == 0 {
                return Phrases.nothingTo(.attack)
            } else {
                if let chosenEntity = Utilities.InputOutput.chooseFromList(
                    items: entitiesAtPosition,
                    display: { $0.name }
                ) {
                    let totalDamage = Int.random(in: 1...5)
                    chosenEntity.changeHealth(by: totalDamage)
                    return Phrases.youAttack(chosenEntity, totalDamage)
                } else {
                    continue
                }
            }
        }
        return Phrases.defaultResponse
    }
}

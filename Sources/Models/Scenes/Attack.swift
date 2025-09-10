struct Attack: Scene {
    var isSceneOver: Bool = false

    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {

            print("Choose something to attack.")

            let entitiesAtPosition = state.listEntitiesAtPosition(
                x: state.playerCharacter.posX, y: state.playerCharacter.posY)

            if entitiesAtPosition.count == 0 {
                return "There's nothing to attack here."
            } else {
                if let chosenEntity = Utilities.InputOutput.chooseFromList(
                    items: entitiesAtPosition,
                    display: { $0.name }
                ) {
                    let totalDamage = Int.random(in: 1...5)
                    chosenEntity.changeHealth(by: totalDamage)
                    return "You attack \(chosenEntity.name), dealing \(totalDamage) damage."
                } else {
                    continue
                }
            }
        }
        return "Default attack."
    }
}

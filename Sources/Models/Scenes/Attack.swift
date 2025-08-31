struct Attack: Scene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {
            print("Choose something to attack.")
            let entities = Utilities.Entities.listEntitiesAtPosition(
                with: state,
                x: state.playerCharacter.posX,
                y: state.playerCharacter.posY
            )
            if entities.count == 0 {
                return "There's nothing to attack here."
            } else {
                Utilities.Entities.printEntities(entities)
                let choice = Utilities.Entities.readChosenEntity(entities)
                if choice == nil {
                    continue
                } else {
                    let totalDamage = Int.random(in: 1..<5)
                    choice!.changeHealth(by: totalDamage)
                    return "You attack \(choice!.name), dealing \(totalDamage) damage."
                }
            }
        }
        return "Default attack."
    }
}

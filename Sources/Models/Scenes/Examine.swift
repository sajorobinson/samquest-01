struct Examine: Scene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {
            print("Choose something to examine.")
            let entities = Utilities.Entities.listEntitiesAtPosition(
                with: state,
                x: state.playerCharacter.posX,
                y: state.playerCharacter.posY
            )
            if entities.count == 0 {
                return "There's nothing to interact with here."
            } else {
                Utilities.Entities.printEntities(entities)
                let choice = Utilities.Entities.readChosenEntity(entities)
                if choice == nil {
                    continue
                } else {
                    let result = choice!.descriptionText
                    return result
                }
            }
        }
        return "Default description."
    }
}

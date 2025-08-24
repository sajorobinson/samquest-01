struct Talk: Scene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {
            print("Who do you want to talk to?")
            let entities = Utilities.Entities.listEntitiesAtPosition(
                with: state,
                x: state.playerCharacter.posX,
                y: state.playerCharacter.posY
            )
            if entities.count == 0 {
                return "There's nothing to talk to here."
            } else {
                Utilities.Entities.printEntities(entities)
                let choice = Utilities.Entities.readChosenEntity(entities)
                if choice == nil {
                    continue
                } else {
                    let result = choice!.speak()
                    return result
                }
            }
        }
        return "Default speech."
    }
}

struct Examine: Scene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {
            print(Helper.InputOutput.examineUserInterface)
            let entities = Helper.Entities.listEntitiesAtPosition(
                with: state,
                x: state.playerCharacter.posX,
                y: state.playerCharacter.posY
            )
            if entities.count == 0 {
                return "There's nothing to interact with here."
            } else {
                Helper.Entities.printEntities(entities)
                let choice = Helper.Entities.readChosenEntity(entities)
                if choice == nil {
                    continue
                } else {
                    let result = choice!.getDescription()
                    return result
                }
            }
        }
        return "Default description."
    }
}

struct Examine: Scene {
    var isSceneOver: Bool = false

    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {

            print("Choose something to examine.")

            let entitiesAtPosition = state.listEntitiesAtPosition(
                x: state.playerCharacter.posX, y: state.playerCharacter.posY)

            if entitiesAtPosition.count == 0 {
                return "There's nothing to examine here."
            } else {
                if let chosenEntity = Utilities.InputOutput.chooseFromList(
                    items: entitiesAtPosition,
                    display: { $0.name }
                ) {
                    return chosenEntity.descriptionText
                } else {
                    continue
                }
            }
        }
        return "Default description."
    }
}

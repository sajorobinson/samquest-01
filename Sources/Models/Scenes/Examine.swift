struct Examine: Scene {
    var isSceneOver: Bool = false

    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {

            print(Phrases.chooseTo(.examine))

            let entitiesAtPosition = state.listEntitiesAtPosition(
                x: state.playerCharacter.entityPosition.x,
                y: state.playerCharacter.entityPosition.y
            )

            if entitiesAtPosition.count == 0 {
                return Phrases.nothingTo(.examine)
            } else {
                if let chosenEntity = Utilities.InputOutput.chooseFromList(
                    items: entitiesAtPosition,
                    display: { $0.entityName.combined }
                ) {
                    return chosenEntity.entityDescription.text
                } else {
                    continue
                }
            }
        }
        return Phrases.defaultResponse
    }
}

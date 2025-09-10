struct Talk: Scene {
    var isSceneOver: Bool = false

    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {
            print("Choose something to speak to.")

            let entitiesAtPosition = state.listEntitiesAtPosition(
                x: state.playerCharacter.entityPosition.x, y: state.playerCharacter.entityPosition.y)

            if entitiesAtPosition.count == 0 {
                return "There's nothing to speak to here."
            } else {
                if let chosenEntity = Utilities.InputOutput.chooseFromList(
                    items: entitiesAtPosition,
                    display: { $0.entityName.value }
                ) {
                    return chosenEntity.speak()
                } else {
                    continue
                }
            }
        }
        return Phrases.defaultResponse
    }
}

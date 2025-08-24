struct Talk: Scene {
    var isSceneOver: Bool = false
    mutating func run(with state: inout GameState) -> String {
        while !self.isSceneOver {
            print("Who do you want to talk to?")
            let entities = Bureaucrat.PopulationsBureau.listEntitiesAtPosition(
                with: state,
                x: state.playerCharacter.posX,
                y: state.playerCharacter.posY
            )
            if entities.count == 0 {
                return "There's nothing to talk to here."
            } else {
                Bureaucrat.PopulationsBureau.printEntities(entities)
                let choice = Bureaucrat.PopulationsBureau.readChosenEntity(entities)
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

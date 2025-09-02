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
                    /*
                    This is where we're introducing the concept of a "turn".
                    At this point, we know that the player wants to attack
                    a particular entity. We can pass both the player and the
                    target into a "Turn" scene. The turn scene will be generic
                    to handle any transaction. It will determine who goes first
                    in the transaction based on entity stats. Depending on the
                    result of the turn, some effect will happen to none, one, or
                    both (or more?) of the scene participants.
                    */
                    let totalDamage = Int.random(in: 1...5)
                    choice!.changeHealth(by: totalDamage)
                    return "You attack \(choice!.name), dealing \(totalDamage) damage."
                }
            }
        }
        return "Default attack."
    }
}

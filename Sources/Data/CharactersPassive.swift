public struct CharactersPassive {
    public struct Humans {
        static func spawn(max: Int) -> [Creature] {
            let people: [Creature] = President.spawnCreatures(count: 3) {
                Character(
                    name: "Human",
                    health: 1,
                    position: (x: 0, y: 0),
                    behavior: .passive,
                    gender: .somethingElse
                )
            }
            return people
        }
    }
}

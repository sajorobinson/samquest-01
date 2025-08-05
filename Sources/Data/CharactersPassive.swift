public struct CharactersPassive {
    public struct Humans {
        static func spawn(count: Int) -> [Creature] {
            let people: [Creature] = GameManager.spawnCreatures(count: count) {
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

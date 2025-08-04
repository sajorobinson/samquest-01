public struct CharactersPassive {
    public struct Humans {
        static func people(max: Int) -> [Creature] {
            let people: [Creature] = President.spawnCreatures(count: 3) {
                Character(
                    name: "Rabbit",
                    health: 1,
                    position: (x: 0, y: 0),
                    behavior: .passive
                )
            }
            return people
        }
    }
}

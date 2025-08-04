public struct CreaturesPassive {
    public struct Mammals {
        static func rabbits(max: Int) -> [Creature] {
            let rabbits = President.spawnCreatures(count: 3) {
                Creature(
                    name: "Rabbit", 
                    health: 1, 
                    position: (x: 0, y: 0), 
                    behavior: .passive
                )
            }
            return rabbits
        }
    }
}
public struct CreaturesPassive {
    public struct Mammals {
        static func spawn(max: Int) -> [Creature] {
            let rabbits: [Creature] = Dog.spawnCreatures(count: 3) {
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
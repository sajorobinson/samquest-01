public struct CreaturesPassive {
    public struct Mammals {
        static func rabbits() -> [Creature] {
            var rabbits: [Creature] = []
            for _ in 1...5 {
                rabbits.append(
                    Creature(
                        name: "Rabbit", 
                        health: 1, 
                        position: (x: 0, y: 0), 
                        behavior: .passive
                    )
                )
            }
            return rabbits
        }
    }
}
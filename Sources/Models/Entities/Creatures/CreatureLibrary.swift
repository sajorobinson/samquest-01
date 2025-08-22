extension Creature {
    static var goblin: Creature {
        Creature(
            name: "Goblin",
            health: 10,
            description: "A really wonderful person you could get to know.",
            behavior: .passive,
            location: Location.goblinCave
        )
    }
}

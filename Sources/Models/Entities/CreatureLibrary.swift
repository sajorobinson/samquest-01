extension Creature {
    static var goblin: Creature {
        Creature(
            name: "Roblin the Goblin",
            health: 10,
            description: "A really wonderful person you could get to know.",
            behavior: .passive
        )
    }

    static var slime: Creature {
        Creature(
            name: "Cave Slime",
            health: 6,
            description: "A translucent blob that jiggles toward you with unsettling enthusiasm.",
            behavior: .hostile
        )
    }

    static var wolf: Creature {
        Creature(
            name: "Ashfang Wolf",
            health: 14,
            description: "A lean, smoke-furred wolf with glowing amber eyes.",
            behavior: .hostile
        )
    }

    static var turtle: Creature {
        Creature(
            name: "Stoneback Turtle",
            health: 20,
            description: "An ancient turtle whose shell looks more like a boulder than a carapace.",
            behavior: .passive
        )
    }

    static var moth: Creature {
        Creature(
            name: "Lantern Moth",
            health: 8,
            description: "A giant moth whose wings emit a faint, soothing glow.",
            behavior: .passive
        )
    }
}

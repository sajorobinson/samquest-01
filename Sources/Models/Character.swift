class Character: Entity, CanMove, CanSpeak {
    override init(name: String, health: Int, description: String, behavior: Behavior) {
        super.init(
            name: name,
            health: health,
            description: description,
            behavior: behavior
        )
    }
}

extension Character {
    static var player: Character {
        Character(
            name: "Sam",
            health: 100,
            description: "The main character of this game.",
            behavior: .passive
        )
    }
    static var author: Character {
        Character(
            name: "Yu Miri",
            health: 100,
            description: "Author",
            behavior: .passive
        )
    }
    static var herbalist: Character {
        Character(
            name: "Maribel the Herbalist",
            health: 12,
            description:
                "A kindly villager with satchels of dried plants and a talent for poultices.",
            behavior: .passive
        )
    }
    static var cuthbert: Character {
        Character(
            name: "Old Man Cuthbert",
            health: 15,
            description: "A retired knight who spends his days carving wooden figurines.",
            behavior: .passive
        )
    }
    static var trickster: Character {
        Character(
            name: "Talia the Trickster",
            health: 11,
            description: "A nimble thief with a sharp wit and an even sharper dagger.",
            behavior: .passive
        )
    }
    static var monk: Character {
        Character(
            name: "Brother Emon",
            health: 18,
            description: "A soft-spoken monk devoted to tending the village shrine.",
            behavior: .passive
        )
    }
    static var captain: Character {
        Character(
            name: "Captain Draeven",
            health: 25,
            description: "A grizzled mercenary captain who never removes his dented helm.",
            behavior: .passive
        )
    }
}

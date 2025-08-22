extension Character {
    static var player: Character {
        Character(
            name: "Sam",
            health: 100,
            description: "The main character of this game.",
            behavior: .passive,
            location: Location.villageSquare
        )
    }

    static var author: Character {
        Character(
            name: "Yu Miri",
            health: 100,
            description: "Author",
            behavior: .passive,
            location: Location.villageSquare
        )
    }

    static var herbalist: Character {
        Character(
            name: "Maribel the Herbalist",
            health: 12,
            description:
                "A kindly villager with satchels of dried plants and a talent for poultices.",
            behavior: .passive,
            location: Location.villageSquare
        )
    }

    static var cuthbert: Character {
        Character(
            name: "Old Man Cuthbert",
            health: 15,
            description: "A retired knight who spends his days carving wooden figurines.",
            behavior: .passive,
            location: Location.villageSquare
        )
    }

    static var trickster: Character {
        Character(
            name: "Talia the Trickster",
            health: 11,
            description: "A nimble thief with a sharp wit and an even sharper dagger.",
            behavior: .passive,
            location: Location.villageSquare
        )
    }

    static var monk: Character {
        Character(
            name: "Brother Emon",
            health: 18,
            description: "A soft-spoken monk devoted to tending the village shrine.",
            behavior: .passive,
            location: Location.villageSquare
        )
    }

    static var captain: Character {
        Character(
            name: "Captain Draeven",
            health: 25,
            description: "A grizzled mercenary captain who never removes his dented helm.",
            behavior: .passive,
            location: Location.villageSquare
        )
    }
}

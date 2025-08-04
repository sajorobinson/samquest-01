final class Character: Creature {
    var gender: Gender

    init(name: String, health: Int, position: (x: Int, y: Int), behavior: Behavior, gender: Gender) {
        self.gender = gender
        super.init(name: name, health: health, position: position, behavior: behavior)
    }

    func says() -> String {
        let somethings: [String] = [
            "Hello!",
            "How are you?",
            "Nice day we're having.",
            "Oh no! A pink giraffe!"
        ]
        let something: String = somethings.randomElement() ?? "Sorry, I didn't quite catch that."
        return something
    }
}
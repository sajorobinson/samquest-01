final class Character: Creature {
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
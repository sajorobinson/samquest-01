protocol CanSpeak {
    func speak() -> String
}

extension CanSpeak {
    func speak() -> String {
        let things: [String] = [
            "Hello!",
            "How are you?",
            "Nice day we're having.",
            "Oh no! A pink giraffe!",
        ]
        let something: String = things.randomElement() ?? "Sorry, I didn't quite catch that."
        return something
    }
}

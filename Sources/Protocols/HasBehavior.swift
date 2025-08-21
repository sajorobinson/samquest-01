protocol HasBehavior: HasName {
    var behavior: Behavior { get set }
    func getBehavior() -> String
}

extension HasBehavior {
    func getBehavior() -> String {
        return "\(self.behavior)"
    }
    mutating func changeBehavior(to newBehavior: Behavior) -> String {
        self.behavior = newBehavior
        return "\(self.behavior)"
    }
}

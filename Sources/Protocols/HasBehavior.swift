protocol HasBehavior {
    var behavior: Behavior { get set }
    func getBehavior() -> String
}

extension HasBehavior {
    func getBehavior() -> String {
        return "\(self.behavior)"
    }
}

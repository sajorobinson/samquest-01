protocol HasBehavior {
    var behavior: Behavior { get set }
    func getBehavior() -> String
}

extension HasBehavior {
    func getBehavior() -> String {
        switch self.behavior {
        case .hostile:
            return "hostile"
        case .passive:
            return "passive"
        }
    }
}

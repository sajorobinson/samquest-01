protocol HasHealth {
    var health: Int { get set }
    func getHealth() -> Int
    func describeHealth() -> String
    mutating func changeHealth(by amount: Int) -> Int
}

extension HasHealth {
    func getHealth() -> Int {
        return self.health
    }

    func describeHealth() -> String {
        return "\(self.health)"
    }

    mutating func changeHealth(by amount: Int) -> Int {
        self.health += amount
        return self.health
    }
}

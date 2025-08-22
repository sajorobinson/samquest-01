protocol HasHealth {
    var health: Int { get set }
    func getHealth() -> String
    mutating func changeHealth(by amount: Int) -> Int
}

extension HasHealth {
    func getHealth() -> String {
        return "\(self.health)"
    }
    mutating func changeHealth(by amount: Int) -> Int {
        self.health += amount
        return self.health
    }
}

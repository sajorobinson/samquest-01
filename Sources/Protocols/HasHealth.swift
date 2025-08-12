protocol HasHealth {
    var health: Int { get set }
    func getHealth() -> Int
    mutating func changeHealth(by amount: Int) -> Int
}

extension HasHealth {
    func getHealth() -> Int {
        return self.health
    }
    mutating func changeHealth(by amount: Int) -> Int {
        self.health += amount
        return self.health
    }
}

protocol HasName {
    var name: String { get set }
    func getName() -> String
    mutating func changeName(to newName: String) -> String
}

extension HasName {
    func getName() -> String {
        return self.name
    }
    mutating func changeName(to newName: String) -> String {
        self.name = newName
        return self.name
    }
}

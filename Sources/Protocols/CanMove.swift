protocol CanMove: HasName {
    func move() -> String
}

extension CanMove {
    func move() -> String {
        return "Movin' right along."
    }
}

protocol HasDescription: HasName {
    var description: String { get set }
    func getDescription() -> String
}

extension HasDescription {
    func getDescription() -> String {
        return self.description
    }
}

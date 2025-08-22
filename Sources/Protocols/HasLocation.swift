protocol HasLocation {
    var location: Location { get set }
}

extension HasLocation {
    func getLocation() -> String {
        return "\(self.location.name)"
    }
    func getLocationDescription() -> String {
        return "\(self.location.description)"
    }
}

struct EntityName {
    var first: String
    var last: String
    
    init(first: String, last: String) {
        self.first = first
        self.last = last
    }
    
    var combined: String {
        return "\(first) \(last)"
    }
}

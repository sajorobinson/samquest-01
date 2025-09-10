struct EntityPosition {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    var positionString: String {
        return "x: \(x), y: \(y)"
    }
}

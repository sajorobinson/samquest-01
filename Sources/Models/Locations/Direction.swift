enum Direction: String, CaseIterable {
    case north = "north"
    case south = "south"
    case east = "east"
    case west = "west"

    static func listDirections() -> [Direction] {
        var directions: [Direction] = []
        for direction in Direction.allCases {
            directions.append(direction)
        }
        return directions
    }
}

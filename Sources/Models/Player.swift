final class Player: Creature {
    func move(in direction: Direction, mapBounds: MapBounds) -> String {
        switch direction {
        case .north:
            if position.y + 1 > mapBounds.maxY {
                return "\(name) can't move north."
            }
            position.y += 1
        case .south:
            if position.y - 1 < mapBounds.minY {
                return "\(name) can't move south."
            }
            position.y -= 1
        case .east:
            if position.x + 1 > mapBounds.maxX {
                return "\(name) can't move east."
            }
            position.x += 1
        case .west:
            if position.x - 1 < mapBounds.minX {
                return "\(name) can't move west."
            }
            position.x -= 1
        }
        return "\(name) moves \(direction.rawValue). New position: (\(position.x), \(position.y))"
    }
}
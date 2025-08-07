final class Player: Creature {
    func move(in direction: Direction, mapBounds: MapBounds) -> String {
        switch direction {
        case .north:
            position.y += 1
        case .south:
            position.y -= 1
        case .east:
            position.x += 1
        case .west:
            position.x -= 1
        }
        return "\(name) moves \(direction.rawValue). New position: (\(position.x), \(position.y))"
    }
}

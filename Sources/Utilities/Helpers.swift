func isAdjacent(_ a: (x: Int, y: Int), to b: (x: Int, y: Int)) -> Bool {
    abs(a.x - b.x) + abs(a.y - b.y) == 1
}

func directionToward(from: (x: Int, y: Int), to: (x: Int, y: Int)) -> Direction? {
    let dx = to.x - from.x
    let dy = to.y - from.y

    if abs(dx) > abs(dy) {
        return dx > 0 ? .east : .west
    } else if dy != 0 {
        return dy > 0 ? .north : .south
    }
    return nil
}

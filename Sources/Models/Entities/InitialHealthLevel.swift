enum InitialHealthLevel: String, CaseIterable {
    case low1, low2, low3
    case medium1, medium2, medium3
    case high1, high2, high3
    case max

    var label: String {
        switch self {
        case .low1, .low2, .low3: return "Low"
        case .medium1, .medium2, .medium3: return "Medium"
        case .high1, .high2, .high3: return "High"
        case .max: return "Maximum"
        }
    }

    var tier: Int {
        switch self {
        case .low1: return 1
        case .low2: return 2
        case .low3: return 3
        case .medium1: return 4
        case .medium2: return 5
        case .medium3: return 6
        case .high1: return 7
        case .high2: return 8
        case .high3: return 9
        case .max: return 10
        }
    }

    var defaultValue: Int {
        return tier * 10
    }
}

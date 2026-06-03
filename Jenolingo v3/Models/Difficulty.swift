import SwiftUI

enum TabooDifficulty: Int, CaseIterable {
    case easy = 0, medium, advanced, fluent

    /// Number of taboo words visible to the active player
    var visibleWordCount: Int { rawValue + 1 }

    var label: String {
        switch self {
        case .easy:     return "Easy"
        case .medium:   return "Medium"
        case .advanced: return "Advanced"
        case .fluent:   return "Fluent"
        }
    }

    var color: Color {
        switch self {
        case .easy:     return Color(red: 0.2,  green: 0.78, blue: 0.35)  // green
        case .medium:   return Color(red: 1.0,  green: 0.75, blue: 0.1)   // amber
        case .advanced: return Color(red: 1.0,  green: 0.45, blue: 0.1)   // orange
        case .fluent:   return Color(red: 0.9,  green: 0.2,  blue: 0.3)   // red
        }
    }
}

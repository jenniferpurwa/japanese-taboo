import Foundation

enum AppRoute: Hashable {
    // Shared
    case modePicker
    case topicSelection

    // Classic mode
    case playerSetup
    case ready
    case activeTurn
    case turnEnd
    case gameOver

    // Team mode
    case teamSetup
    case teamReady
    case teamActiveTurn
    case teamTurnEnd
    case teamGameOver
}

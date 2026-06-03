import Foundation

struct Player: Identifiable {
    let id: Int
    var name: String
    var difficulty: TabooDifficulty
    var score: Int = 0

    init(id: Int, name: String? = nil, difficulty: TabooDifficulty = .easy) {
        self.id = id
        self.name = name ?? "Player \(id)"
        self.difficulty = difficulty
    }
}

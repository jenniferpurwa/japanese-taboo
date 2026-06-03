import Foundation

struct Player: Identifiable {
    let id: Int
    var name: String
    var score: Int = 0

    init(id: Int, name: String? = nil) {
        self.id = id
        self.name = name ?? "Player \(id)"
    }
}

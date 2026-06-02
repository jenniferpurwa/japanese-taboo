import Foundation

struct Player: Identifiable {
    let id: Int
    var score: Int = 0

    var name: String {
        "Player \(id)"
    }
}

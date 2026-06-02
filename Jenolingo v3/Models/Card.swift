import Foundation

struct TabooWord: Identifiable {
    let id = UUID()
    let word: String
    let reading: String
    let translation: String

    /// Formatted display: word（reading）— translation
    var displayText: String {
        "\(word)（\(reading)）— \(translation)"
    }
}

struct Card: Identifiable {
    let id: String          // e.g. "food_01", "daily_02", "anime_15"
    let japaneseWord: String
    let reading: String?    // nil for pure katakana/no furigana needed
    let tabooWords: [TabooWord] // always 4, ordered easy → hardest to avoid
    let topic: Topic

    /// Main word display: word（reading）if reading exists, else just word
    var displayWord: String {
        if let reading = reading {
            return "\(japaneseWord)（\(reading)）"
        }
        return japaneseWord
    }
}

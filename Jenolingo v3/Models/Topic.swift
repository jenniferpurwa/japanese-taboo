import SwiftUI

enum Topic: String, CaseIterable, Identifiable {
    case foodAndDrink
    case dailyLife
    case animeAndGames
    case hobbiesAndActivities
    case travelAndTourism

    var id: String { rawValue }

    var englishTitle: String {
        switch self {
        case .foodAndDrink:          return "Food & Drink"
        case .dailyLife:             return "Daily Life"
        case .animeAndGames:         return "Anime & Games"
        case .hobbiesAndActivities:  return "Hobbies & Activities"
        case .travelAndTourism:      return "Travel & Tourism"
        }
    }

    var japaneseTitle: String {
        switch self {
        case .foodAndDrink:          return "たべもの・のみもの"
        case .dailyLife:             return "にちじょうにほんご"
        case .animeAndGames:         return "アニメ・ゲーム"
        case .hobbiesAndActivities:  return "しゅみ・アクティビティ"
        case .travelAndTourism:      return "りょこう・かんこう"
        }
    }

    var isAvailable: Bool {
        switch self {
        case .foodAndDrink, .dailyLife, .animeAndGames: return true
        case .hobbiesAndActivities, .travelAndTourism:  return false
        }
    }

    var color: Color {
        switch self {
        case .foodAndDrink:          return Color("TopicFood")
        case .dailyLife:             return Color("TopicDaily")
        case .animeAndGames:         return Color("TopicAnime")
        case .hobbiesAndActivities:  return Color("TopicHobbies")
        case .travelAndTourism:      return Color("TopicTravel")
        }
    }
}

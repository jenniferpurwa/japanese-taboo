import Foundation

enum CardData {
    static func cards(for topic: Topic) -> [Card] {
        switch topic {
        case .foodAndDrink:         return foodDrinkCards
        case .dailyLife:            return dailyLifeCards
        case .animeAndGames:        return animeGamesCards
        case .hobbiesAndActivities: return hobbiesActivitiesCards
        case .travelAndTourism:     return travelTourismCards
        }
    }
}

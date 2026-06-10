import Foundation
import Combine

class GameSession: ObservableObject {

    // MARK: - Navigation
    @Published var navigationPath: [AppRoute] = []

    // MARK: - Mode
    @Published var gameMode: GameMode = .classic
    @Published var teamTurnDuration: Int = 90

    // MARK: - Classic setup
    @Published var players: [Player] = []

    // MARK: - Team setup
    @Published var teams: [Team] = []
    @Published var currentTeamIndex: Int = 0
    @Published var turnPoints: Int = 0

    // MARK: - Shared setup
    @Published var selectedTopic: Topic? = nil

    // MARK: - Deck
    @Published var deck: [Card] = []
    @Published var currentCard: Card? = nil

    // MARK: - Turn state
    @Published var currentPlayerIndex: Int = 0
    @Published var turnResult: TurnResult = .none

    // MARK: - Timer
    @Published var timeRemaining: Int = 90
    @Published var timerRunning: Bool = false
    private var timerCancellable: AnyCancellable?

    // MARK: - Computed

    var currentPlayer: Player? {
        guard !players.isEmpty else { return nil }
        return players[currentPlayerIndex]
    }

    var currentTeam: Team? {
        guard !teams.isEmpty else { return nil }
        return teams[currentTeamIndex]
    }

    var isDeckEmpty: Bool { deck.isEmpty && currentCard == nil }

    // MARK: - Navigation helpers

    func navigate(to route: AppRoute) {
        navigationPath.append(route)
    }

    func popToTopics() {
        stopTimer()
        currentCard = nil
        deck = []
        selectedTopic = nil
        turnResult = .none
        timeRemaining = 90
        currentPlayerIndex = 0
        turnPoints = 0
        if let index = navigationPath.lastIndex(of: .topicSelection) {
            navigationPath = Array(navigationPath.prefix(through: index))
        }
    }

    func restartFromHome() {
        stopTimer()
        currentCard = nil
        deck = []
        selectedTopic = nil
        turnResult = .none
        timeRemaining = 90
        currentPlayerIndex = 0
        players = []
        teams = []
        currentTeamIndex = 0
        turnPoints = 0
        gameMode = .classic
        teamTurnDuration = 90
        navigationPath = []
    }

    // MARK: - Classic player setup

    func setupPlayers(names: [String], difficulties: [TabooDifficulty]) {
        players = names.enumerated().map { index, name in
            let trimmed = name.trimmingCharacters(in: .whitespaces)
            let difficulty = difficulties.indices.contains(index) ? difficulties[index] : .easy
            return Player(id: index + 1, name: trimmed.isEmpty ? "Player \(index + 1)" : trimmed, difficulty: difficulty)
        }
        currentPlayerIndex = 0
    }

    func startGame(topic: Topic) {
        selectedTopic = topic
        deck = CardData.cards(for: topic).shuffled()
        currentCard = nil
        currentPlayerIndex = 0
        turnResult = .none
    }

    // MARK: - Classic turn lifecycle

    func startTurn() {
        guard !deck.isEmpty else { return }
        currentCard = deck.removeFirst()
        turnResult = .none
        timeRemaining = 90
        startTimer()
    }

    func markCorrect() {
        stopTimer()
        players[currentPlayerIndex].score += 1
        turnResult = .correct
        currentCard = nil
    }

    func skipCard() {
        guard let card = currentCard else { return }
        deck.append(card)
        guard !deck.isEmpty else { return }
        currentCard = deck.removeFirst()
    }

    func endTurn() {
        stopTimer()
        if turnResult == .none { turnResult = .timeUp }
        currentCard = nil
    }

    func nextPlayer() {
        currentPlayerIndex = (currentPlayerIndex + 1) % players.count
        turnResult = .none
        timeRemaining = 90
    }

    // MARK: - Team setup

    func setupTeams(names: [String]) {
        teams = names.enumerated().map { index, name in
            let trimmed = name.trimmingCharacters(in: .whitespaces)
            return Team(id: index + 1, name: trimmed.isEmpty ? "Team \(index + 1)" : trimmed)
        }
        currentTeamIndex = 0
    }

    func startTeamGame(topic: Topic) {
        selectedTopic = topic
        deck = CardData.cards(for: topic).shuffled()
        currentCard = nil
        currentTeamIndex = 0
        turnResult = .none
        turnPoints = 0
    }

    // MARK: - Team turn lifecycle

    func startTeamTurn() {
        if deck.isEmpty, let topic = selectedTopic {
            deck = CardData.cards(for: topic).shuffled()
        }
        guard !deck.isEmpty else { return }
        currentCard = deck.removeFirst()
        turnResult = .none
        turnPoints = 0
        timeRemaining = teamTurnDuration
        startTimer()
    }

    func teamMarkCorrect() {
        teams[currentTeamIndex].score += 1
        turnPoints += 1
        // Advance to next card, reshuffling if deck runs dry mid-turn
        if deck.isEmpty, let topic = selectedTopic {
            deck = CardData.cards(for: topic).shuffled()
        }
        currentCard = deck.isEmpty ? nil : deck.removeFirst()
    }

    func teamSkipCard() {
        guard let card = currentCard else { return }
        deck.append(card)
        currentCard = deck.removeFirst()
    }

    func endTeamTurn() {
        stopTimer()
        if turnResult == .none { turnResult = .timeUp }
        currentCard = nil
    }

    func nextTeam() {
        currentTeamIndex = (currentTeamIndex + 1) % teams.count
        turnResult = .none
        turnPoints = 0
        timeRemaining = teamTurnDuration
    }

    // MARK: - Timer

    private func startTimer() {
        timerRunning = true
        timerCancellable = Timer.publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                guard let self else { return }
                if self.timeRemaining > 0 {
                    self.timeRemaining -= 1
                } else {
                    if self.gameMode == .team {
                        self.endTeamTurn()
                    } else {
                        self.endTurn()
                    }
                }
            }
    }

    func stopTimer() {
        timerRunning = false
        timerCancellable?.cancel()
        timerCancellable = nil
    }
}

enum TurnResult {
    case none
    case correct
    case timeUp
}

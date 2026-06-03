import Foundation
import Combine

class GameSession: ObservableObject {

    // MARK: - Setup
    @Published var players: [Player] = []
    @Published var selectedTopic: Topic? = nil
    @Published var shouldResetToHome: Bool = false

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

    var isDeckEmpty: Bool { deck.isEmpty && currentCard == nil }

    // MARK: - Setup

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

    // MARK: - Turn lifecycle

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
        deck.append(card)           // goes to end of deck
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
                    self.endTurn()
                }
            }
    }

    func stopTimer() {
        timerRunning = false
        timerCancellable?.cancel()
        timerCancellable = nil
    }

    // MARK: - Exit

    func exitGame() {
        stopTimer()
        currentCard = nil
        deck = []
        selectedTopic = nil
        turnResult = .none
        timeRemaining = 90
    }

    func restartFromHome() {
        exitGame()
        players = []
        shouldResetToHome = true
    }
}

enum TurnResult {
    case none
    case correct
    case timeUp
}

import SwiftUI

// MARK: - Difficulty level for taboo word index
enum TabooDifficulty: Int {
    case easy = 0, medium, advanced, fluent

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
        case .easy:     return Color(red: 0.2, green: 0.78, blue: 0.35)   // green
        case .medium:   return Color(red: 1.0, green: 0.75, blue: 0.1)    // amber
        case .advanced: return Color(red: 1.0, green: 0.45, blue: 0.1)    // orange
        case .fluent:   return Color(red: 0.9, green: 0.2, blue: 0.3)     // red
        }
    }
}

// MARK: - Main view
struct ActiveTurnView: View {
    @ObservedObject var session: GameSession
    @State private var showExitAlert = false
    @State private var navigateToTurnEnd = false
    @State private var navigateToGameOver = false

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 0) {

                // ── Top bar ──────────────────────────────────────────────
                HStack(alignment: .center) {
                    // Left: player name + score
                    if let player = session.currentPlayer {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("\(player.name)'s Turn")
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                            Text("\(player.score) pts")
                                .font(.system(size: 12, weight: .medium, design: .rounded))
                                .foregroundColor(.white.opacity(0.5))
                        }
                    }

                    Spacer()

                    // Centre: timer
                    TimerView(timeRemaining: session.timeRemaining)

                    Spacer()

                    // Right: exit
                    Button {
                        showExitAlert = true
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 28))
                            .foregroundColor(.white.opacity(0.4))
                    }
                }
                .padding(.horizontal, 24)
                .padding(.top, 20)

                Spacer()

                // ── Main word ────────────────────────────────────────────
                if let card = session.currentCard {
                    VStack(spacing: 8) {
                        Text(card.japaneseWord)
                            .font(.system(size: 52, weight: .black, design: .rounded))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)

                        // Reading — English translation
                        if let reading = card.reading {
                            Text("\(reading)  —  \(card.englishTranslation)")
                                .font(.system(size: 18, weight: .medium, design: .rounded))
                                .foregroundColor(.white.opacity(0.55))
                        } else {
                            Text(card.englishTranslation)
                                .font(.system(size: 18, weight: .medium, design: .rounded))
                                .foregroundColor(.white.opacity(0.55))
                        }
                    }
                    .padding(.horizontal, 24)

                    Spacer()

                    // ── Taboo words ──────────────────────────────────────
                    VStack(alignment: .leading, spacing: 10) {
                        Text("TABOO")
                            .font(.system(size: 11, weight: .heavy))
                            .tracking(3)
                            .foregroundColor(.red.opacity(0.8))
                            .padding(.horizontal, 24)

                        VStack(spacing: 8) {
                            ForEach(Array(card.tabooWords.enumerated()), id: \.offset) { index, taboo in
                                let difficulty = TabooDifficulty(rawValue: index) ?? .easy
                                TabooWordRow(taboo: taboo, number: index + 1, difficulty: difficulty)
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                }

                Spacer()

                // ── Skip / Correct ───────────────────────────────────────
                HStack(spacing: 16) {
                    Button {
                        session.skipCard()
                    } label: {
                        Label("Skip", systemImage: "forward.fill")
                            .font(.system(size: 17, weight: .semibold, design: .rounded))
                            .foregroundColor(.white.opacity(0.75))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 18)
                            .background(Color.white.opacity(0.12))
                            .cornerRadius(14)
                    }

                    Button {
                        session.markCorrect()
                        navigateToTurnEnd = true
                    } label: {
                        Label("Correct!", systemImage: "checkmark")
                            .font(.system(size: 17, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 18)
                            .background(Color.white)
                            .cornerRadius(14)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 50)
            }
        }
        #if os(iOS)
        .toolbar(.hidden, for: .navigationBar)
        #endif
        .onChange(of: session.turnResult) { result in
            if result == .timeUp {
                navigateToTurnEnd = true
            }
        }
        .navigationDestination(isPresented: $navigateToTurnEnd) {
            TurnEndView(session: session)
        }
        .navigationDestination(isPresented: $navigateToGameOver) {
            GameOverView(session: session)
        }
        .alert("Exit Game?", isPresented: $showExitAlert) {
            Button(role: .destructive) {
                session.exitGame()
                navigateToGameOver = true
            } label: {
                Text("Yes, exit")
            }
            Button(role: .cancel) {
                Text("No, keep playing")
            }
        } message: {
            Text("Are you sure you want to exit?")
        }
    }
}

// MARK: - Taboo word row
struct TabooWordRow: View {
    let taboo: TabooWord
    let number: Int
    let difficulty: TabooDifficulty

    var body: some View {
        HStack(spacing: 10) {
            // Number badge (left)
            ZStack {
                Circle()
                    .fill(Color.white.opacity(0.12))
                    .frame(width: 28, height: 28)
                Text("\(number)")
                    .font(.system(size: 13, weight: .bold, design: .rounded))
                    .foregroundColor(.white.opacity(0.7))
            }

            // Word text
            Text(taboo.displayText)
                .font(.system(size: 15, weight: .medium, design: .rounded))
                .foregroundColor(.white.opacity(0.85))
                .lineLimit(1)
                .minimumScaleFactor(0.8)

            Spacer()

            // Difficulty chip (right)
            Text(difficulty.label)
                .font(.system(size: 11, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .padding(.horizontal, 9)
                .padding(.vertical, 4)
                .background(difficulty.color)
                .cornerRadius(8)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 10)
        .background(Color.red.opacity(0.08))
        .cornerRadius(10)
    }
}

// MARK: - Timer
struct TimerView: View {
    let timeRemaining: Int

    var color: Color {
        if timeRemaining > 30 { return .white }
        if timeRemaining > 10 { return .yellow }
        return .red
    }

    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: "timer")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(color)
            Text("\(timeRemaining)s")
                .font(.system(size: 28, weight: .black, design: .rounded))
                .foregroundColor(color)
                .monospacedDigit()
        }
    }
}

#Preview {
    NavigationStack {
        ActiveTurnView(session: GameSession())
    }
}

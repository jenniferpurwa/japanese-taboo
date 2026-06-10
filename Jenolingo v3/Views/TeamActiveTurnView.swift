import SwiftUI

struct TeamActiveTurnView: View {
    @ObservedObject var session: GameSession
    @State private var showExitAlert = false

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 0) {

                // ── Top bar ──────────────────────────────────────────────
                HStack(alignment: .center) {
                    if let team = session.currentTeam {
                        VStack(alignment: .leading, spacing: 2) {
                            Text(team.name)
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                            HStack(spacing: 4) {
                                Text("\(team.score) pts total")
                                    .font(.system(size: 12, weight: .medium, design: .rounded))
                                    .foregroundColor(.white.opacity(0.5))
                                if session.turnPoints > 0 {
                                    Text("(+\(session.turnPoints) this turn)")
                                        .font(.system(size: 12, weight: .medium, design: .rounded))
                                        .foregroundColor(Color(red: 0.4, green: 0.9, blue: 0.5))
                                }
                            }
                        }
                    }

                    Spacer()

                    TeamTimerView(timeRemaining: session.timeRemaining)

                    Spacer()

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

                    // ── Taboo words (all visible in team mode) ──────────
                    VStack(alignment: .leading, spacing: 10) {
                        Text("TABOO")
                            .font(.system(size: 11, weight: .heavy))
                            .tracking(3)
                            .foregroundColor(.red.opacity(0.8))
                            .padding(.horizontal, 24)

                        VStack(spacing: 8) {
                            ForEach(Array(card.tabooWords.enumerated()), id: \.offset) { index, taboo in
                                let wordDifficulty = TabooDifficulty(rawValue: index) ?? .easy
                                TabooWordRow(
                                    taboo: taboo,
                                    number: index + 1,
                                    wordDifficulty: wordDifficulty,
                                    isVisible: true
                                )
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                }

                Spacer()

                // ── Skip / Correct ───────────────────────────────────────
                HStack(spacing: 16) {
                    Button {
                        session.teamSkipCard()
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
                        session.teamMarkCorrect()
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
        .onChange(of: session.turnResult) { _, result in
            if result == .timeUp {
                session.navigate(to: .teamTurnEnd)
            }
        }
        .alert("Exit Game?", isPresented: $showExitAlert) {
            Button(role: .destructive) {
                session.stopTimer()
                session.navigate(to: .teamGameOver)
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

// MARK: - Team Timer (counts down from 120)
struct TeamTimerView: View {
    let timeRemaining: Int

    var color: Color {
        if timeRemaining > 60 { return .white }
        if timeRemaining > 30 { return .yellow }
        return .red
    }

    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: "timer")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(color)
            Text(timeString)
                .font(.system(size: 28, weight: .black, design: .rounded))
                .foregroundColor(color)
                .monospacedDigit()
        }
    }

    private var timeString: String {
        String(format: "%02d:%02d", timeRemaining / 60, timeRemaining % 60)
    }
}

#Preview {
    NavigationStack {
        TeamActiveTurnView(session: GameSession())
    }
}

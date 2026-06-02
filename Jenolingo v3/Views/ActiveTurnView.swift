import SwiftUI

struct ActiveTurnView: View {
    @ObservedObject var session: GameSession
    @State private var showExitAlert = false
    @State private var navigateToTurnEnd = false
    @State private var navigateToGameOver = false

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 0) {
                // Top bar: timer + exit
                HStack {
                    TimerView(timeRemaining: session.timeRemaining)
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

                // Main word
                if let card = session.currentCard {
                    VStack(spacing: 12) {
                        Text(card.japaneseWord)
                            .font(.system(size: 52, weight: .black, design: .rounded))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)

                        if let reading = card.reading {
                            Text("（\(reading)）")
                                .font(.system(size: 22, weight: .medium))
                                .foregroundColor(.white.opacity(0.55))
                        }
                    }
                    .padding(.horizontal, 24)

                    Spacer()

                    // Taboo words
                    VStack(alignment: .leading, spacing: 10) {
                        Text("TABOO")
                            .font(.system(size: 11, weight: .heavy))
                            .tracking(3)
                            .foregroundColor(.red.opacity(0.8))
                            .padding(.horizontal, 24)

                        VStack(spacing: 8) {
                            ForEach(card.tabooWords) { taboo in
                                HStack {
                                    Image(systemName: "xmark")
                                        .font(.system(size: 12, weight: .bold))
                                        .foregroundColor(.red.opacity(0.7))
                                    Text(taboo.displayText)
                                        .font(.system(size: 16, weight: .medium, design: .rounded))
                                        .foregroundColor(.white.opacity(0.85))
                                    Spacer()
                                }
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background(Color.red.opacity(0.08))
                                .cornerRadius(10)
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                }

                Spacer()

                // Skip / Correct buttons
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

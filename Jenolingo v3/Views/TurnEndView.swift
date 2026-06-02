import SwiftUI

struct TurnEndView: View {
    @ObservedObject var session: GameSession
    @State private var navigateToReady = false
    @State private var navigateToGameOver = false

    var isCorrect: Bool { session.turnResult == .correct }

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                // Result
                VStack(spacing: 16) {
                    Image(systemName: isCorrect ? "checkmark.circle.fill" : "clock.fill")
                        .font(.system(size: 64))
                        .foregroundColor(isCorrect ? .green : .yellow)

                    Text(isCorrect ? "Correct!" : "Time's Up!")
                        .font(.system(size: 34, weight: .black, design: .rounded))
                        .foregroundColor(.white)

                    if let player = session.currentPlayer {
                        Text(isCorrect ? "\(player.name) scores a point!" : "\(player.name)'s turn is over.")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.white.opacity(0.55))
                            .multilineTextAlignment(.center)
                    }
                }

                Spacer()

                // Scores
                VStack(spacing: 10) {
                    Text("Scores")
                        .font(.system(size: 13, weight: .heavy))
                        .tracking(2)
                        .foregroundColor(.white.opacity(0.4))
                        .padding(.bottom, 4)

                    ForEach(session.players.sorted { $0.score > $1.score }) { player in
                        HStack {
                            Text(player.name)
                                .font(.system(size: 16, weight: .medium, design: .rounded))
                                .foregroundColor(player.id == session.currentPlayer?.id ? .white : .white.opacity(0.5))
                            Spacer()
                            Text("\(player.score)")
                                .font(.system(size: 18, weight: .black, design: .rounded))
                                .foregroundColor(player.id == session.currentPlayer?.id ? .white : .white.opacity(0.5))
                        }
                        .padding(.horizontal, 40)
                    }
                }
                .padding(.bottom, 40)

                // Next action
                if session.isDeckEmpty {
                    Button {
                        navigateToGameOver = true
                    } label: {
                        Text("See Final Scores")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 20)
                            .background(Color.white)
                            .cornerRadius(16)
                    }
                    .padding(.horizontal, 32)
                } else {
                    Button {
                        session.nextPlayer()
                        navigateToReady = true
                    } label: {
                        Text("Next Player")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 20)
                            .background(Color.white)
                            .cornerRadius(16)
                    }
                    .padding(.horizontal, 32)
                }

                Spacer().frame(height: 60)
            }
        }
        #if os(iOS)
        .toolbar(.hidden, for: .navigationBar)
        #endif
        .navigationDestination(isPresented: $navigateToReady) {
            ReadyView(session: session)
        }
        .navigationDestination(isPresented: $navigateToGameOver) {
            GameOverView(session: session)
        }
    }
}

#Preview {
    NavigationStack {
        TurnEndView(session: GameSession())
    }
}

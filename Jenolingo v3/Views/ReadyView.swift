import SwiftUI

struct ReadyView: View {
    @ObservedObject var session: GameSession
    @State private var showExitAlert = false

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 0) {
                // Exit button
                HStack {
                    Spacer()
                    Button {
                        showExitAlert = true
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 28))
                            .foregroundColor(.white.opacity(0.4))
                    }
                    .padding(.trailing, 24)
                    .padding(.top, 16)
                }

                Spacer()

                VStack(spacing: 20) {
                    if let player = session.currentPlayer {
                        Text(player.name)
                            .font(.system(size: 38, weight: .black, design: .rounded))
                            .foregroundColor(.white)

                        Text("それはあなたの番です！")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(.white.opacity(0.55))

                        Text("It's your turn!")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white.opacity(0.4))
                    }
                }

                Spacer()

                // Scores summary
                VStack(spacing: 8) {
                    ForEach(session.players) { player in
                        HStack {
                            Text(player.name)
                                .font(.system(size: 15, weight: .medium, design: .rounded))
                                .foregroundColor(player.id == session.currentPlayer?.id ? .white : .white.opacity(0.45))
                            Spacer()
                            Text("\(player.score) pts")
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                .foregroundColor(player.id == session.currentPlayer?.id ? .white : .white.opacity(0.45))
                        }
                        .padding(.horizontal, 32)
                    }
                }
                .padding(.bottom, 32)

                Button {
                    session.startTurn()
                    session.navigate(to: .activeTurn)
                } label: {
                    Text("Start My Turn")
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 20)
                        .background(Color.white)
                        .cornerRadius(16)
                }
                .padding(.horizontal, 32)
                .padding(.bottom, 60)
            }
        }
        #if os(iOS)
        .toolbar(.hidden, for: .navigationBar)
        #endif
        .alert("Exit Game?", isPresented: $showExitAlert) {
            Button(role: .destructive) {
                session.stopTimer()
                session.navigate(to: .gameOver)
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

#Preview {
    HomeView()
}

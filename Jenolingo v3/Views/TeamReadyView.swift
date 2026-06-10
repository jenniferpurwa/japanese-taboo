import SwiftUI

struct TeamReadyView: View {
    @ObservedObject var session: GameSession
    @State private var showExitAlert = false

    private var turnDurationLabel: String {
        let s = session.teamTurnDuration
        return String(format: "%02d:%02d", s / 60, s % 60)
    }

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 0) {
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
                    if let team = session.currentTeam {
                        Text(team.name)
                            .font(.system(size: 38, weight: .black, design: .rounded))
                            .foregroundColor(.white)

                        Text("あなたたちの番です！")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(.white.opacity(0.55))

                        Text("It's your turn!")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white.opacity(0.4))
                    }

                    HStack(spacing: 8) {
                        Image(systemName: "timer")
                            .font(.system(size: 14))
                            .foregroundColor(.white.opacity(0.4))
                        Text("\(turnDurationLabel) — score as many cards as you can")
                            .font(.system(size: 14, weight: .medium, design: .rounded))
                            .foregroundColor(.white.opacity(0.4))
                    }
                    .padding(.top, 4)
                }

                Spacer()

                // Team scores
                VStack(spacing: 8) {
                    ForEach(session.teams) { team in
                        HStack {
                            Text(team.name)
                                .font(.system(size: 15, weight: .medium, design: .rounded))
                                .foregroundColor(team.id == session.currentTeam?.id ? .white : .white.opacity(0.45))
                            Spacer()
                            Text("\(team.score) pts")
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                .foregroundColor(team.id == session.currentTeam?.id ? .white : .white.opacity(0.45))
                        }
                        .padding(.horizontal, 32)
                    }
                }
                .padding(.bottom, 32)

                Button {
                    session.startTeamTurn()
                    session.navigate(to: .teamActiveTurn)
                } label: {
                    Text("Start Turn")
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

#Preview {
    HomeView()
}

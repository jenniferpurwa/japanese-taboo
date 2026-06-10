import SwiftUI

struct TeamTurnEndView: View {
    @ObservedObject var session: GameSession

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                // Result
                VStack(spacing: 16) {
                    Image(systemName: "clock.fill")
                        .font(.system(size: 64))
                        .foregroundColor(.yellow)

                    Text("Time's Up!")
                        .font(.system(size: 34, weight: .black, design: .rounded))
                        .foregroundColor(.white)

                    if let team = session.currentTeam {
                        VStack(spacing: 4) {
                            Text("\(team.name) scored")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white.opacity(0.55))
                            Text("\(session.turnPoints) \(session.turnPoints == 1 ? "point" : "points")")
                                .font(.system(size: 42, weight: .black, design: .rounded))
                                .foregroundColor(.white)
                            Text("this turn")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white.opacity(0.55))
                        }
                    }
                }

                Spacer()

                // Team scores
                VStack(spacing: 10) {
                    Text("Scores")
                        .font(.system(size: 13, weight: .heavy))
                        .tracking(2)
                        .foregroundColor(.white.opacity(0.4))
                        .padding(.bottom, 4)

                    ForEach(session.teams.sorted { $0.score > $1.score }) { team in
                        HStack {
                            Text(team.name)
                                .font(.system(size: 16, weight: .medium, design: .rounded))
                                .foregroundColor(team.id == session.currentTeam?.id ? .white : .white.opacity(0.5))
                            Spacer()
                            Text("\(team.score) pts")
                                .font(.system(size: 18, weight: .black, design: .rounded))
                                .foregroundColor(team.id == session.currentTeam?.id ? .white : .white.opacity(0.5))
                        }
                        .padding(.horizontal, 40)
                    }
                }
                .padding(.bottom, 40)

                // Actions
                VStack(spacing: 12) {
                    Button {
                        session.nextTeam()
                        session.navigate(to: .teamReady)
                    } label: {
                        Text("Next Team")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 20)
                            .background(Color.white)
                            .cornerRadius(16)
                    }
                    .padding(.horizontal, 32)

                    Button {
                        session.navigate(to: .teamGameOver)
                    } label: {
                        Text("End Game")
                            .font(.system(size: 17, weight: .semibold, design: .rounded))
                            .foregroundColor(.white.opacity(0.5))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 14)
                    }
                    .padding(.horizontal, 32)
                }

                Spacer().frame(height: 60)
            }
        }
        #if os(iOS)
        .toolbar(.hidden, for: .navigationBar)
        #endif
    }
}

#Preview {
    HomeView()
}

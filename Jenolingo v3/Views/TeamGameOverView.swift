import SwiftUI

struct TeamGameOverView: View {
    @ObservedObject var session: GameSession

    var sortedTeams: [Team] {
        session.teams.sorted { $0.score > $1.score }
    }

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                VStack(spacing: 8) {
                    Text("🏆")
                        .font(.system(size: 56))

                    Text("Game Over")
                        .font(.system(size: 36, weight: .black, design: .rounded))
                        .foregroundColor(.white)

                    Text("ゲームオーバー")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.white.opacity(0.45))
                }

                Spacer()

                VStack(spacing: 12) {
                    Text("Final Scores")
                        .font(.system(size: 13, weight: .heavy))
                        .tracking(2)
                        .foregroundColor(.white.opacity(0.4))
                        .padding(.bottom, 8)

                    ForEach(Array(sortedTeams.enumerated()), id: \.element.id) { index, team in
                        HStack(spacing: 16) {
                            ZStack {
                                Circle()
                                    .fill(index == 0 ? Color.yellow : Color.white.opacity(0.12))
                                    .frame(width: 36, height: 36)
                                Text("\(index + 1)")
                                    .font(.system(size: 16, weight: .black))
                                    .foregroundColor(index == 0 ? .black : .white.opacity(0.6))
                            }

                            Text(team.name)
                                .font(.system(size: 18, weight: .semibold, design: .rounded))
                                .foregroundColor(index == 0 ? .white : .white.opacity(0.65))

                            Spacer()

                            Text("\(team.score) pts")
                                .font(.system(size: 20, weight: .black, design: .rounded))
                                .foregroundColor(index == 0 ? .yellow : .white.opacity(0.65))
                        }
                        .padding(.horizontal, 32)
                    }
                }

                Spacer()

                VStack(spacing: 12) {
                    Button {
                        session.popToTopics()
                    } label: {
                        Text("Back to Topics")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 20)
                            .background(Color.white)
                            .cornerRadius(16)
                    }
                    .padding(.horizontal, 32)

                    Button {
                        session.restartFromHome()
                    } label: {
                        Text("Home")
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

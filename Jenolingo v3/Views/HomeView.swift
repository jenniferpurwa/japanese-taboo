import SwiftUI

struct HomeView: View {
    @StateObject private var session = GameSession()

    var body: some View {
        NavigationStack(path: $session.navigationPath) {
            ZStack {
                Color.black.ignoresSafeArea()

                VStack(spacing: 40) {
                    Spacer()

                    VStack(spacing: 12) {
                        Text("JENOLINGO")
                            .font(.system(size: 42, weight: .black, design: .rounded))
                            .foregroundColor(.white)
                            .tracking(4)

                        Text("日本語タブー")
                            .font(.system(size: 22, weight: .medium, design: .rounded))
                            .foregroundColor(.white.opacity(0.6))

                        VStack(spacing: 4) {
                            Text("Let's learn Japanese together")
                                .font(.system(size: 15, weight: .medium, design: .rounded))
                                .foregroundColor(.white.opacity(0.45))

                            Text("一緒に日本語を学ぼう！")
                                .font(.system(size: 15, weight: .medium, design: .rounded))
                                .foregroundColor(.white.opacity(0.45))
                        }
                        .padding(.top, 4)
                    }

                    Spacer()

                    Button {
                        session.navigate(to: .modePicker)
                    } label: {
                        Text("スタート")
                            .font(.system(size: 22, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 18)
                            .background(Color.white)
                            .cornerRadius(16)
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 60)
                }
            }
            .navigationDestination(for: AppRoute.self) { route in
                switch route {
                case .modePicker:
                    ModePickerView(session: session)
                case .playerSetup:
                    PlayerSetupView(session: session)
                case .topicSelection:
                    TopicSelectionView(session: session)
                case .ready:
                    ReadyView(session: session)
                case .activeTurn:
                    ActiveTurnView(session: session)
                case .turnEnd:
                    TurnEndView(session: session)
                case .gameOver:
                    GameOverView(session: session)
                case .teamSetup:
                    TeamSetupView(session: session)
                case .teamReady:
                    TeamReadyView(session: session)
                case .teamActiveTurn:
                    TeamActiveTurnView(session: session)
                case .teamTurnEnd:
                    TeamTurnEndView(session: session)
                case .teamGameOver:
                    TeamGameOverView(session: session)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

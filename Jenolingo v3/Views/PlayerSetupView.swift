import SwiftUI

struct PlayerSetupView: View {
    @ObservedObject var session: GameSession
    @State private var playerCount: Int = 2
    @State private var navigateToTopics = false

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 48) {
                Spacer()

                VStack(spacing: 12) {
                    Text("How many players?")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(.white)

                    Text("何人でプレイしますか？")
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .foregroundColor(.white.opacity(0.5))
                }

                // Player count selector
                HStack(spacing: 32) {
                    Button {
                        if playerCount > 2 { playerCount -= 1 }
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.system(size: 44))
                            .foregroundColor(playerCount > 2 ? .white : .white.opacity(0.3))
                    }
                    .disabled(playerCount <= 2)

                    Text("\(playerCount)")
                        .font(.system(size: 72, weight: .black, design: .rounded))
                        .foregroundColor(.white)
                        .frame(minWidth: 80)

                    Button {
                        if playerCount < 8 { playerCount += 1 }
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 44))
                            .foregroundColor(playerCount < 8 ? .white : .white.opacity(0.3))
                    }
                    .disabled(playerCount >= 8)
                }

                // Player list preview
                VStack(spacing: 8) {
                    ForEach(1...playerCount, id: \.self) { i in
                        HStack {
                            Circle()
                                .fill(Color.white.opacity(0.15))
                                .frame(width: 32, height: 32)
                                .overlay(
                                    Text("\(i)")
                                        .font(.system(size: 14, weight: .bold))
                                        .foregroundColor(.white)
                                )
                            Text("Player \(i)")
                                .font(.system(size: 16, weight: .medium, design: .rounded))
                                .foregroundColor(.white.opacity(0.8))
                            Spacer()
                        }
                        .padding(.horizontal, 32)
                    }
                }

                Spacer()

                Button {
                    session.setupPlayers(count: playerCount)
                    navigateToTopics = true
                } label: {
                    Text("Choose Topic")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
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
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.dark, for: .navigationBar)
        #endif
        .navigationDestination(isPresented: $navigateToTopics) {
            TopicSelectionView(session: session)
        }
    }
}

#Preview {
    NavigationStack {
        PlayerSetupView(session: GameSession())
    }
}

import SwiftUI

struct HomeView: View {
    @StateObject private var session = GameSession()
    @State private var showPlayerSetup = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.ignoresSafeArea()

                VStack(spacing: 40) {
                    Spacer()

                    VStack(spacing: 8) {
                        Text("JENOLINGO")
                            .font(.system(size: 42, weight: .black, design: .rounded))
                            .foregroundColor(.white)
                            .tracking(4)

                        Text("日本語タブー")
                            .font(.system(size: 22, weight: .medium, design: .rounded))
                            .foregroundColor(.white.opacity(0.6))
                    }

                    Spacer()

                    Button {
                        showPlayerSetup = true
                    } label: {
                        Text("New Game")
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
            .navigationDestination(isPresented: $showPlayerSetup) {
                PlayerSetupView(session: session)
            }
        }
    }
}

#Preview {
    HomeView()
}

import SwiftUI

struct TopicSelectionView: View {
    @ObservedObject var session: GameSession
    @State private var selectedTopic: Topic? = nil
    @State private var navigateToReady = false

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 24) {
                VStack(spacing: 6) {
                    Text("Choose a Topic")
                        .font(.system(size: 26, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    Text("トピックを選んでください")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.white.opacity(0.5))
                }
                .padding(.top, 24)

                VStack(spacing: 14) {
                    ForEach(Topic.allCases) { topic in
                        TopicCard(topic: topic) {
                            guard topic.isAvailable else { return }
                            session.startGame(topic: topic)
                            navigateToReady = true
                        }
                    }
                }
                .padding(.horizontal, 24)

                Spacer()
            }
        }
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.dark, for: .navigationBar)
        #endif
        .navigationDestination(isPresented: $navigateToReady) {
            ReadyView(session: session)
        }
    }
}

struct TopicCard: View {
    let topic: Topic
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(topic.englishTitle)
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                        .foregroundColor(topic.isAvailable ? .white : .white.opacity(0.35))
                    Text(topic.japaneseTitle)
                        .font(.system(size: 13, weight: .medium))
                        .foregroundColor(topic.isAvailable ? .white.opacity(0.65) : .white.opacity(0.2))
                }
                Spacer()
                if !topic.isAvailable {
                    Text("Coming Soon")
                        .font(.system(size: 11, weight: .semibold))
                        .foregroundColor(.white.opacity(0.3))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background(Color.white.opacity(0.08))
                        .cornerRadius(8)
                } else {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white.opacity(0.5))
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 18)
            .background(
                RoundedRectangle(cornerRadius: 14)
                    .fill(topic.isAvailable ? Color.white.opacity(0.1) : Color.white.opacity(0.04))
            )
        }
        .disabled(!topic.isAvailable)
    }
}

#Preview {
    NavigationStack {
        TopicSelectionView(session: GameSession())
    }
}

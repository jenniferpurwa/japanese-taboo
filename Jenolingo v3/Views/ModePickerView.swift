import SwiftUI

struct ModePickerView: View {
    @ObservedObject var session: GameSession

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 40) {
                Spacer()

                VStack(spacing: 12) {
                    Text("Choose a Mode")
                        .font(.system(size: 30, weight: .black, design: .rounded))
                        .foregroundColor(.white)
                    Text("モードを選んでください")
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .foregroundColor(.white.opacity(0.5))
                }

                VStack(spacing: 16) {
                    // Classic mode card
                    Button {
                        session.gameMode = .classic
                        session.navigate(to: .playerSetup)
                    } label: {
                        ModeCard(
                            icon: "person.fill",
                            title: "Classic",
                            subtitle: "クラシック",
                            description: "Take turns one at a time. Score a point if you get it right.",
                            accentColor: .white
                        )
                    }

                    // Team mode card
                    Button {
                        session.gameMode = .team
                        session.navigate(to: .teamSetup)
                    } label: {
                        ModeCard(
                            icon: "person.3.fill",
                            title: "Team Mode",
                            subtitle: "チームモード",
                            description: "Groups compete in 2-minute rounds. Score as many cards as you can!",
                            accentColor: Color(red: 0.4, green: 0.8, blue: 1.0)
                        )
                    }
                }
                .padding(.horizontal, 32)

                Spacer()
            }
        }
        #if os(iOS)
        .toolbar(.hidden, for: .navigationBar)
        #endif
    }
}

private struct ModeCard: View {
    let icon: String
    let title: String
    let subtitle: String
    let description: String
    let accentColor: Color

    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: icon)
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(accentColor)
                .frame(width: 52)

            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 8) {
                    Text(title)
                        .font(.system(size: 20, weight: .black, design: .rounded))
                        .foregroundColor(accentColor)
                    Text(subtitle)
                        .font(.system(size: 13, weight: .medium, design: .rounded))
                        .foregroundColor(accentColor.opacity(0.6))
                }
                Text(description)
                    .font(.system(size: 13, weight: .regular, design: .rounded))
                    .foregroundColor(.white.opacity(0.5))
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Spacer()

            Image(systemName: "chevron.right")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(accentColor.opacity(0.5))
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(accentColor.opacity(0.08))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .strokeBorder(accentColor.opacity(0.25), lineWidth: 1)
                )
        )
    }
}

#Preview {
    NavigationStack {
        ModePickerView(session: GameSession())
    }
}

import SwiftUI

struct PlayerSetupView: View {
    @ObservedObject var session: GameSession
    @State private var playerCount: Int = 2
    @State private var playerNames: [String] = ["", ""]
    @State private var editingIndex: Int? = nil
    @State private var navigateToTopics = false
    @FocusState private var focusedField: Int?

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 40) {
                Spacer()

                VStack(spacing: 12) {
                    Text("How many players?")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    Text("何人でプレイしますか？")
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .foregroundColor(.white.opacity(0.5))
                }

                // Player count stepper
                HStack(spacing: 32) {
                    Button {
                        if playerCount > 2 {
                            playerCount -= 1
                            playerNames = Array(playerNames.prefix(playerCount))
                        }
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
                        if playerCount < 8 {
                            playerCount += 1
                            playerNames.append("")
                        }
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 44))
                            .foregroundColor(playerCount < 8 ? .white : .white.opacity(0.3))
                    }
                    .disabled(playerCount >= 8)
                }

                // Player name list
                VStack(spacing: 8) {
                    ForEach(0..<playerCount, id: \.self) { i in
                        HStack(spacing: 12) {
                            // Number badge
                            Circle()
                                .fill(Color.white.opacity(0.15))
                                .frame(width: 32, height: 32)
                                .overlay(
                                    Text("\(i + 1)")
                                        .font(.system(size: 14, weight: .bold))
                                        .foregroundColor(.white)
                                )

                            if editingIndex == i {
                                // Editable field
                                TextField("Player \(i + 1)", text: $playerNames[i])
                                    .font(.system(size: 16, weight: .medium, design: .rounded))
                                    .foregroundColor(.white)
                                    .tint(.white)
                                    .focused($focusedField, equals: i)
                                    .submitLabel(.done)
                                    .onSubmit { editingIndex = nil }
                            } else {
                                // Tappable display name
                                let displayName = playerNames[i].trimmingCharacters(in: .whitespaces)
                                Text(displayName.isEmpty ? "Player \(i + 1)" : displayName)
                                    .font(.system(size: 16, weight: .medium, design: .rounded))
                                    .foregroundColor(displayName.isEmpty ? .white.opacity(0.35) : .white.opacity(0.85))
                            }

                            Spacer()

                            // Edit / done icon
                            Button {
                                if editingIndex == i {
                                    editingIndex = nil
                                    focusedField = nil
                                } else {
                                    editingIndex = i
                                    focusedField = i
                                }
                            } label: {
                                Image(systemName: editingIndex == i ? "checkmark.circle.fill" : "pencil")
                                    .font(.system(size: 16))
                                    .foregroundColor(.white.opacity(0.4))
                            }
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(editingIndex == i ? Color.white.opacity(0.12) : Color.white.opacity(0.06))
                        )
                        .padding(.horizontal, 32)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            editingIndex = i
                            focusedField = i
                        }
                    }
                }

                Spacer()

                Button {
                    session.setupPlayers(names: (0..<playerCount).map { i in
                        let name = playerNames[i].trimmingCharacters(in: .whitespaces)
                        return name.isEmpty ? "Player \(i + 1)" : name
                    })
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

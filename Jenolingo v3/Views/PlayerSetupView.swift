import SwiftUI

struct PlayerSetupView: View {
    @ObservedObject var session: GameSession
    @State private var playerCount: Int = 4
    @State private var playerNames: [String] = Array(repeating: "", count: 4)
    @State private var playerDifficulties: [TabooDifficulty] = Array(repeating: .easy, count: 4)
    @State private var editingIndex: Int? = nil
    @FocusState private var focusedField: Int?

    private func applyPlayerCount(_ n: Int) {
        playerCount = n
        while playerNames.count < n { playerNames.append(""); playerDifficulties.append(.easy) }
        if playerNames.count > n {
            playerNames = Array(playerNames.prefix(n))
            playerDifficulties = Array(playerDifficulties.prefix(n))
        }
    }

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            ScrollView {
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
                        if playerCount > 1 {
                            applyPlayerCount(playerCount - 1)
                        }
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.system(size: 44))
                            .foregroundColor(playerCount > 1 ? .white : .white.opacity(0.3))
                    }
                    .disabled(playerCount <= 1)

                    Menu {
                        ForEach(1...20, id: \.self) { n in
                            Button("\(n)") {
                                applyPlayerCount(n)
                            }
                        }
                    } label: {
                        Text("\(playerCount)")
                            .font(.system(size: 72, weight: .black, design: .rounded))
                            .foregroundColor(.white)
                            .frame(width: 120)
                    }

                    Button {
                        if playerCount < 20 {
                            applyPlayerCount(playerCount + 1)
                        }
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 44))
                            .foregroundColor(playerCount < 20 ? .white : .white.opacity(0.3))
                    }
                    .disabled(playerCount >= 20)
                }

                // Player name list
                VStack(spacing: 10) {
                    ForEach(0..<playerCount, id: \.self) { i in
                        VStack(spacing: 0) {
                            // ── Name row ──────────────────────────────
                            HStack(spacing: 12) {
                                Circle()
                                    .fill(Color.white.opacity(0.15))
                                    .frame(width: 32, height: 32)
                                    .overlay(
                                        Text("\(i + 1)")
                                            .font(.system(size: 14, weight: .bold))
                                            .foregroundColor(.white)
                                    )

                                if editingIndex == i {
                                    TextField("Player \(i + 1)", text: $playerNames[i])
                                        .font(.system(size: 16, weight: .medium, design: .rounded))
                                        .foregroundColor(.white)
                                        .tint(.white)
                                        .focused($focusedField, equals: i)
                                        .submitLabel(.done)
                                        .onSubmit { editingIndex = nil }
                                } else {
                                    let displayName = playerNames[i].trimmingCharacters(in: .whitespaces)
                                    Text(displayName.isEmpty ? "Player \(i + 1)" : displayName)
                                        .font(.system(size: 16, weight: .medium, design: .rounded))
                                        .foregroundColor(displayName.isEmpty ? .white.opacity(0.35) : .white.opacity(0.85))
                                }

                                Spacer()

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
                            .padding(.top, 12)
                            .padding(.bottom, 10)

                            // ── Difficulty chips ───────────────────────
                            HStack(spacing: 6) {
                                ForEach(TabooDifficulty.allCases, id: \.rawValue) { level in
                                    let selected = playerDifficulties[i] == level
                                    Button {
                                        playerDifficulties[i] = level
                                    } label: {
                                        Text(level.label)
                                            .font(.system(size: 11, weight: .bold, design: .rounded))
                                            .foregroundColor(selected ? .black : level.color)
                                            .padding(.horizontal, 10)
                                            .padding(.vertical, 5)
                                            .background(
                                                RoundedRectangle(cornerRadius: 8)
                                                    .fill(selected ? level.color : level.color.opacity(0.15))
                                            )
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 8)
                                                    .strokeBorder(level.color.opacity(selected ? 0 : 0.4), lineWidth: 1)
                                            )
                                    }
                                }
                                Spacer()
                            }
                            .padding(.horizontal, 16)
                            .padding(.bottom, 12)
                        }
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
                    session.setupPlayers(
                        names: (0..<playerCount).map { i in
                            let name = playerNames[i].trimmingCharacters(in: .whitespaces)
                            return name.isEmpty ? "Player \(i + 1)" : name
                        },
                        difficulties: playerDifficulties
                    )
                    session.navigate(to: .topicSelection)
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
            } // ScrollView
        }
        #if os(iOS)
        .toolbar(.hidden, for: .navigationBar)
        #endif
    }
}

#Preview {
    NavigationStack {
        PlayerSetupView(session: GameSession())
    }
}

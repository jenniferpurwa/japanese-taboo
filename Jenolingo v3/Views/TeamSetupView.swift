import SwiftUI

struct TeamSetupView: View {
    @ObservedObject var session: GameSession
    @State private var teamCount: Int = 2
    @State private var teamNames: [String] = Array(repeating: "", count: 2)
    @State private var editingIndex: Int? = nil
    @FocusState private var focusedField: Int?

    private func timeLabel(_ seconds: Int) -> String {
        String(format: "%02d:%02d", seconds / 60, seconds % 60)
    }

    private func applyTeamCount(_ n: Int) {
        teamCount = n
        while teamNames.count < n { teamNames.append("") }
        if teamNames.count > n { teamNames = Array(teamNames.prefix(n)) }
    }

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            ScrollView {
                VStack(spacing: 40) {
                    Spacer()

                    VStack(spacing: 12) {
                        Text("How many teams?")
                            .font(.system(size: 28, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                        Text("何チームでプレイしますか？")
                            .font(.system(size: 16, weight: .medium, design: .rounded))
                            .foregroundColor(.white.opacity(0.5))
                    }

                    // Team count stepper
                    HStack(spacing: 32) {
                        Button {
                            if teamCount > 2 { applyTeamCount(teamCount - 1) }
                        } label: {
                            Image(systemName: "minus.circle.fill")
                                .font(.system(size: 44))
                                .foregroundColor(teamCount > 2 ? .white : .white.opacity(0.3))
                        }
                        .disabled(teamCount <= 2)

                        Menu {
                            ForEach(2...6, id: \.self) { n in
                                Button("\(n)") { applyTeamCount(n) }
                            }
                        } label: {
                            Text("\(teamCount)")
                                .font(.system(size: 72, weight: .black, design: .rounded))
                                .foregroundColor(.white)
                                .frame(width: 120)
                        }

                        Button {
                            if teamCount < 6 { applyTeamCount(teamCount + 1) }
                        } label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 44))
                                .foregroundColor(teamCount < 6 ? .white : .white.opacity(0.3))
                        }
                        .disabled(teamCount >= 6)
                    }

                    // Turn duration picker
                    VStack(spacing: 12) {
                        VStack(spacing: 4) {
                            Text("Turn Duration")
                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                            Text("ターンの時間")
                                .font(.system(size: 13, weight: .medium, design: .rounded))
                                .foregroundColor(.white.opacity(0.4))
                        }

                        HStack(spacing: 32) {
                            Button {
                                if session.teamTurnDuration > 30 {
                                    session.teamTurnDuration -= 30
                                }
                            } label: {
                                Image(systemName: "minus.circle.fill")
                                    .font(.system(size: 36))
                                    .foregroundColor(session.teamTurnDuration > 30 ? .white : .white.opacity(0.3))
                            }
                            .disabled(session.teamTurnDuration <= 30)

                            Text(timeLabel(session.teamTurnDuration))
                                .font(.system(size: 42, weight: .black, design: .rounded))
                                .foregroundColor(.white)
                                .monospacedDigit()
                                .frame(width: 140)

                            Button {
                                if session.teamTurnDuration < 300 {
                                    session.teamTurnDuration += 30
                                }
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 36))
                                    .foregroundColor(session.teamTurnDuration < 300 ? .white : .white.opacity(0.3))
                            }
                            .disabled(session.teamTurnDuration >= 300)
                        }
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 32)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.white.opacity(0.06))
                    )
                    .padding(.horizontal, 32)

                    // Team name list
                    VStack(spacing: 10) {
                        ForEach(0..<teamCount, id: \.self) { i in
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
                                    TextField("Team \(i + 1)", text: $teamNames[i])
                                        .font(.system(size: 16, weight: .medium, design: .rounded))
                                        .foregroundColor(.white)
                                        .tint(.white)
                                        .focused($focusedField, equals: i)
                                        .submitLabel(.done)
                                        .onSubmit { editingIndex = nil }
                                } else {
                                    let display = teamNames[i].trimmingCharacters(in: .whitespaces)
                                    Text(display.isEmpty ? "Team \(i + 1)" : display)
                                        .font(.system(size: 16, weight: .medium, design: .rounded))
                                        .foregroundColor(display.isEmpty ? .white.opacity(0.35) : .white.opacity(0.85))
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
                            .padding(.vertical, 14)
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
                        session.setupTeams(
                            names: (0..<teamCount).map { i in
                                let name = teamNames[i].trimmingCharacters(in: .whitespaces)
                                return name.isEmpty ? "Team \(i + 1)" : name
                            }
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
            }
        }
        #if os(iOS)
        .toolbar(.hidden, for: .navigationBar)
        #endif
    }
}

#Preview {
    NavigationStack {
        TeamSetupView(session: GameSession())
    }
}

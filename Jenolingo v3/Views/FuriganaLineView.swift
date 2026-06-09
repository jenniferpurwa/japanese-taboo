import SwiftUI

/// Renders a line of Japanese text with optional furigana above each segment.
/// Pass an array of (text, reading?) tuples; nil reading = no furigana above that segment.
struct FuriganaLineView: View {
    let segments: [(String, String?)]
    var fontSize: CGFloat = 15
    var furiganaSize: CGFloat = 9

    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            ForEach(segments.indices, id: \.self) { i in
                let (text, reading) = segments[i]
                VStack(spacing: 1) {
                    if let reading {
                        Text(reading)
                            .font(.system(size: furiganaSize, weight: .regular, design: .rounded))
                    } else {
                        Text(" ")
                            .font(.system(size: furiganaSize))
                            .hidden()
                    }
                    Text(text)
                        .font(.system(size: fontSize, weight: .medium, design: .rounded))
                }
            }
        }
    }
}

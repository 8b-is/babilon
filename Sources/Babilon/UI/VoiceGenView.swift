import SwiftUI

struct VoiceGenView: View {
    @State private var textInput = ""
    
    var body: some View {
        VStack(spacing: 16) {
            Text("🎙️ QUANT VoiceGen")
                .font(.title)
            Text("Voice generation and playback are not available yet.")
                .font(.caption)
                .foregroundStyle(.secondary)
            
            TextEditor(text: $textInput)
                .frame(height: 120)
                .border(.secondary)
                .padding()
            
            Button("Generate Voice — unavailable") {}
                .buttonStyle(.borderedProminent)
                .disabled(true)
            Text("You can draft text here. No audio has been generated.")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

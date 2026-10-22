import SwiftUI

struct AnimalTranslateView: View {
    @State private var translator = AnimalTranslator()

    var body: some View {
        VStack(spacing: 16) {
            Text("🐾 Animal Translation")
                .font(.title)
            Text("Animal listening and translation are not available yet.")
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)

            Picker("Select Animal", selection: $translator.selectedSpecies) {
                ForEach(AnimalSpecies.allCases, id: \.self) { species in
                    Text(species.rawValue).tag(species)
                }
            }
            .pickerStyle(.menu)
            .disabled(true)

            Button("Listen — unavailable") {}
                .buttonStyle(.borderedProminent)
                .disabled(true)

            Text("The microphone is off. No sounds have been analyzed.")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

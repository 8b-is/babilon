import SwiftUI

struct ContentView: View {
    @Environment(AppState.self) private var state
    
    var body: some View {
        TabView(selection: Binding(get: { state.currentTab }, set: { state.currentTab = $0 })) {
            CameraView()
                .tabItem { Label("Camera", systemImage: "camera.fill") }
                .tag(AppState.Tab.camera)
            
            AnimalTranslateView()
                .tabItem { Label("Animal", systemImage: "pawprint.fill") }
                .tag(AppState.Tab.animal)
            
            MediaLibraryView()
                .tabItem { Label("Library", systemImage: "photo.stack") }
                .tag(AppState.Tab.library)
            
            VoiceGenView()
                .tabItem { Label("Voice", systemImage: "waveform") }
                .tag(AppState.Tab.voice)
            
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gear") }
                .tag(AppState.Tab.settings)
        }
    }
}

struct CameraView: View {
    var body: some View {
        VStack {
            Text("📸 Camera")
                .font(.title)
            Text("Camera capture is not available yet.")
                .foregroundStyle(.secondary)
            Text("No camera feed or filter is running.")
                .font(.caption)
                .foregroundStyle(.cyan)
        }
    }
}

struct MediaLibraryView: View {
    var body: some View {
        VStack {
            Text("📚 Media Library")
                .font(.title)
            Text("Media import, storage, and recall are not available yet.")
                .foregroundStyle(.secondary)
        }
    }
}

struct SettingsView: View {
    @Environment(AppState.self) private var state
    
    var body: some View {
        VStack {
            Text("⚙️ Settings")
                .font(.title)
            Picker("Ternarity Filter", selection: Binding(get: { state.ternarityFilter }, set: { state.ternarityFilter = $0 })) {
                ForEach(TernarityLevel.allCases, id: \.self) { level in
                    Text(level.rawValue).tag(level)
                }
            }
            .disabled(true)
            .padding()
            Text("Filters are not available yet.")
                .foregroundStyle(.secondary)
        }
    }
}

struct QuickCaptureView: View {
    var body: some View {
        VStack {
            Text("Babilon")
                .font(.headline)
            Button("Quick Capture — unavailable") {}
                .buttonStyle(.borderedProminent)
                .disabled(true)
        }
        .padding()
    }
}

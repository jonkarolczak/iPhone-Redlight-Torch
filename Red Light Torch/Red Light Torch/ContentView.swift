import SwiftUI

struct ContentView: View {
    @State private var isLightOn = true
    @State private var brightness: Double = 1.0
    @State private var originalBrightness: Double = UIScreen.main.brightness
    @Environment(\.scenePhase) private var scenePhase

    var body: some View {
        ZStack {
            (isLightOn ? Color.red : Color.black)
                .opacity(brightness)
                .ignoresSafeArea()
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isLightOn.toggle()
                    }
                }

            VStack {
                Spacer()

                Slider(value: $brightness, in: 0.0...1.0)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 50)
                    .tint(.white)
            }
        }
        .onChange(of: isLightOn) { oldValue, newValue in
            UIApplication.shared.isIdleTimerDisabled = newValue

            if newValue {
                UIScreen.main.brightness = 1.0
            } else {
                UIScreen.main.brightness = originalBrightness
            }
        }
        .onChange(of: scenePhase) { oldPhase, newPhase in
            switch newPhase {
            case .active:
                if isLightOn {
                    UIScreen.main.brightness = 1.0
                }
            case .inactive, .background:
                UIScreen.main.brightness = originalBrightness
            @unknown default:
                break
            }
        }
        .onAppear {
            originalBrightness = UIScreen.main.brightness
            UIApplication.shared.isIdleTimerDisabled = isLightOn

            if isLightOn {
                UIScreen.main.brightness = 1.0
            }
        }
    }
}

#Preview {
    ContentView()
}

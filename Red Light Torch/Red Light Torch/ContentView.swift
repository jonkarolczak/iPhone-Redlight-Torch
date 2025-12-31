import SwiftUI

struct ContentView: View {
    @State private var isLightOn = true
    @State private var brightness: Double = 1.0

    var body: some View {
        ZStack {
            (isLightOn ? Color.red : Color.black)
                .opacity(brightness)
                .ignoresSafeArea()
                .onTapGesture {
                    isLightOn.toggle()
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
        }
        .onAppear {
            UIApplication.shared.isIdleTimerDisabled = isLightOn
        }
    }
}

#Preview {
    ContentView()
}

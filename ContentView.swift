import SwiftUI

struct ContentView: View {
    @State private var isLightOn = true

    var body: some View {
        (isLightOn ? Color.red : Color.black)
            .ignoresSafeArea()
            .onTapGesture {
                isLightOn.toggle()
            }
    }
}

#Preview {
    ContentView()
}

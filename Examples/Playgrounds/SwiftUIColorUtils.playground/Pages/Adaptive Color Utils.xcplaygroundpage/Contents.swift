//: [Previous](@previous)

import SwiftUI
import SwiftUIThemeColorUtils
import PlaygroundSupport


struct ContentView {
    @State
    private var preferredColorScheme: ColorScheme = .light
    
    
    private func switchColorScheme() {
        switch preferredColorScheme {
        case .light:
            preferredColorScheme = .dark
        case .dark:
            preferredColorScheme = .light
        }
    }
}



extension ContentView: View {
    
    var body: some View {
        VStack(spacing: 32) {
            
            VStack {
                Text("Hello")
                    .foregroundColor(
                        Color(light: .cyan, dark: .pink)
                    )
                
                Text("SwiftUI")
                    .foregroundColor(
                        Color(light: .pink, dark: .cyan)
                    )
            }
            
            Spacer()
            
            Button(
                action: switchColorScheme,
                label: {
                    Text("Toggle Color Mode")
                }
            )
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .preferredColorScheme(preferredColorScheme)
    }
}



PlaygroundPage.current.setLiveView(
    ContentView()
)

//: [Next](@next)

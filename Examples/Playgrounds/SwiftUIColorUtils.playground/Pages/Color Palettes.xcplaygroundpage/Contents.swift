//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport

@testable import SwiftUIColorUtils


struct ContentView {

    @Environment(\.preferredColorPalette)
    private var preferredColorPalette: ColorPalette
}



extension ContentView: View {
    
    var body: some View {
        List {
            ColorSwatchListSection(
                headerTitle: "Theme 1",
                swatches: [
                    .init(
                        name: "Background - Main",
                        color: preferredColorPalette.mainBackground
                    ),
                    .init(
                        name: "Primary",
                        color: preferredColorPalette.primary
                    ),
                    .init(
                        name: "Secondary 1",
                        color: preferredColorPalette.secondary1
                    ),
                    .init(
                        name: "Secondary 2",
                        color: preferredColorPalette.secondary2
                    ),
                    .init(
                        name: "Secondary 3",
                        color: preferredColorPalette.secondary3
                    ),
                    .init(
                        name: "Pop 1",
                        color: preferredColorPalette.pop1
                    ),
                    .init(
                        name: "Pop 2",
                        color: preferredColorPalette.pop2
                    ),
                ]
            )
        }
    }
}



PlaygroundPage.current.setLiveView(
    
    ContentView()
        .environment(\.preferredColorPalette, .init(name: .theme1))
)



//: [Next](@next)

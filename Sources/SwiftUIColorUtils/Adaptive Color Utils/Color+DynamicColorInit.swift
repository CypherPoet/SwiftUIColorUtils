import SwiftUI


extension Color {
    
    public init(
        light lightModeColor: @escaping @autoclosure () -> Color,
        dark darkModeColor: @escaping @autoclosure () -> Color
    ) {
        #if canImport(UIKit)
        
        self.init(
            UIColor(
                light: UIColor(lightModeColor()),
                dark: UIColor(darkModeColor())
            )
        )
        
        #elseif os(macOS)
        
        self.init(
            NSColor(
                light: NSColor(lightModeColor()),
                dark: NSColor(darkModeColor())
            )
        )
        
        #endif
    }
}



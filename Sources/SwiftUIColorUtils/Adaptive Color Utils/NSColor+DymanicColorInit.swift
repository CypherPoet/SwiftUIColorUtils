#if os(macOS)

import Cocoa


extension NSAppearance {
    
    internal var isDarkMode: Bool {
        bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
    }
}


extension NSColor {
    
    public convenience init(
        light lightModeColor: @escaping @autoclosure () -> NSColor,
        dark darkModeColor: @escaping @autoclosure () -> NSColor
     ) {
         self.init(
            name: nil,
            dynamicProvider: { nsAppearance in
                nsAppearance.isDarkMode ? darkModeColor() : lightModeColor()
            }
        )
    }
}

#endif

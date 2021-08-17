#if os(macOS)

import Cocoa


extension NSAppearance {
    
    internal var isDarkMode: Bool {
        if self.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua {
            return true
        } else {
            return false
        }
    }
}


extension NSColor {
    
    public convenience init(
        light lightModeColor: @escaping @autoclosure () -> NSColor,
        dark darkModeColor: @escaping @autoclosure () -> NSColor
     ) {
         self.init(name: nil) { nsAppearance in
             nsAppearance.isDarkMode ? darkModeColor() : lightModeColor()
         }
    }
}

#endif

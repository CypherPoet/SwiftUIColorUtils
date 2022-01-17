import SwiftUI
import SwiftUIColorUtils


extension EnvironmentValues {

    public var preferredColorPalette: ColorPalette {
        get {
            self[ColorPaletteKey.self]
        }
        set {
            self[ColorPaletteKey.self] = newValue
        }
    }
}


extension View {
    
    public func preferredColorPalette(_ preferredColorPalette: ColorPalette) -> some View {
        environment(\.preferredColorPalette, preferredColorPalette)
    }
}

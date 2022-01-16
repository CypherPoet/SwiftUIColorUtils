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

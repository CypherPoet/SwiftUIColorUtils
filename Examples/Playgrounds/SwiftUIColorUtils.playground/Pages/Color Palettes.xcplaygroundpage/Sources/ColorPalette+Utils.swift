import SwiftUI
import SwiftUIColorUtils


extension ColorPalette {
    
    public static let playgroundsBundle: Bundle = .main
    
    public static let theme1 = Self(
        name: .theme1,
        bundle: playgroundsBundle
    )
}


extension ColorPalette.PaletteName {
    
    public static let theme1 = Self(rawValue: "Theme 1")
}

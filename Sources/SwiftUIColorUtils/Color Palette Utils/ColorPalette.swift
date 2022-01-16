import SwiftUI


public struct ColorPalette {
    
    public var name: ColorPalette.PaletteName
    
    internal var bundle: Bundle?
    

    // MARK: - Init
    public init(
        name: ColorPalette.PaletteName,
        bundle: Bundle? = nil
    ) {
        self.name = name
        self.bundle = bundle
    }
    
    
    public var mainBackground: Color {
        Color(
            paletteName: name,
            semanticName: .mainBackground,
            bundle: bundle
        )
    }
    
    
    public var midBackground: Color {
        Color(
            paletteName: name,
            semanticName: .midBackground,
            bundle: bundle
        )
    }
    
    
    public var alternativeBackground: Color {
        Color(
            paletteName: name,
            semanticName: .alternativeBackground,
            bundle: bundle
        )
    }
    
    
    public var primaryText: Color {
        Color(
            paletteName: name,
            semanticName: .primaryText,
            bundle: bundle
        )
    }
    
    
    public var alternativeText: Color {
        Color(
            paletteName: name,
            semanticName: .alternativeText,
            bundle: bundle
        )
    }
    
    
    public var primary: Color {
        Color(
            paletteName: name,
            semanticName: .primary,
            bundle: bundle
        )
    }
    
    
    public var secondary1: Color {
        Color(
            paletteName: name,
            semanticName: .secondary1,
            bundle: bundle
        )
    }
    
    
    public var secondary2: Color {
        Color(
            paletteName: name,
            semanticName: .secondary2,
            bundle: bundle
        )
    }
    
    
    public var secondary3: Color {
        Color(
            paletteName: name,
            semanticName: .secondary3,
            bundle: bundle
        )
    }
    
    
    public var pop1: Color {
        Color(
            paletteName: name,
            semanticName: .pop1,
            bundle: bundle
        )
    }
    
    
    public var pop2: Color {
        Color(
            paletteName: name,
            semanticName: .pop2,
            bundle: bundle
        )
    }
    
    
    public var errorText: Color {
        Color(
            paletteName: name,
            semanticName: .errorText,
            bundle: bundle
        )
    }
    
    
    public var errorBackground: Color {
        Color(
            paletteName: name,
            semanticName: .errorBackground,
            bundle: bundle
        )
    }
    
    
    public var errorBorder: Color {
        Color(
            paletteName: name,
            semanticName: .errorBorder,
            bundle: bundle
        )
    }
}

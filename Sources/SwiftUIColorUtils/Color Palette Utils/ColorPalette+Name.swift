import Foundation


extension ColorPalette {
    
    public struct PaletteName {
        public var rawValue: String
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}


extension ColorPalette.PaletteName: ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String) {
        self = .init(rawValue: value)
    }
}


extension ColorPalette.PaletteName: ExpressibleByStringInterpolation {}



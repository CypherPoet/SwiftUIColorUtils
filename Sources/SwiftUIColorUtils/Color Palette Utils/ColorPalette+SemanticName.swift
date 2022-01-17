import Foundation


extension ColorPalette {
    
    public struct SemanticName {
        public var rawValue: String
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}


extension ColorPalette.SemanticName: ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String) {
        self = .init(rawValue: value)
    }
}



extension ColorPalette.SemanticName {
    
    public static let mainBackground: ColorPalette.SemanticName = "Background - Main"
    public static let midBackground: ColorPalette.SemanticName = "Background - Mid"
    public static let alternativeBackground: ColorPalette.SemanticName = "Background - Alt"
    public static let primaryText: ColorPalette.SemanticName = "Text - Primary"
    public static let alternativeText: ColorPalette.SemanticName = "Text - Alt"
    public static let primary: ColorPalette.SemanticName = "Primary"
    public static let secondary1: ColorPalette.SemanticName = "Secondary 1"
    public static let secondary2: ColorPalette.SemanticName = "Secondary 2"
    public static let secondary3: ColorPalette.SemanticName = "Secondary 3"
    public static let pop1: ColorPalette.SemanticName = "Pop 1"
    public static let pop2: ColorPalette.SemanticName = "Pop 2"
    public static let errorText: ColorPalette.SemanticName = "Error - Text"
    public static let errorBackground: ColorPalette.SemanticName = "Error - Background"
    public static let errorBorder: ColorPalette.SemanticName = "Error - Border"
}

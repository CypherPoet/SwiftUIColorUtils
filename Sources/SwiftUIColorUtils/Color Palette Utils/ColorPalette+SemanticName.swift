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
    
    public static let mainBackground: Self = "Background - Main"
    public static let midBackground: Self = "Background - Mid"
    public static let alternativeBackground: Self = "Background - Alt"
    public static let primaryText: Self = "Text - Primary"
    public static let alternativeText: Self = "Text - Alt"
    public static let primary: Self = "Primary"
    public static let secondary1: Self = "Secondary 1"
    public static let secondary2: Self = "Secondary 2"
    public static let secondary3: Self = "Secondary 3"
    public static let pop1: Self = "Pop 1"
    public static let pop2: Self = "Pop 2"
    public static let errorText: Self = "Error - Text"
    public static let errorBackground: Self = "Error - Background"
    public static let errorBorder: Self = "Error - Border"
}

import SwiftUI


public struct ThemeColorGroup {
    public let id = UUID()
    
    public var primary: Color
    public var secondary1: Color
    public var secondary2: Color
    public var secondary3: Color
    public var pop1: Color
    public var pop2: Color
    public var pop3: Color
    
    
    // MARK: - Init
    public init(
        primary: Color,
        secondary1: Color,
        secondary2: Color = Color.primary,
        secondary3: Color = Color.primary,
        pop1: Color,
        pop2: Color = Color.primary,
        pop3: Color = Color.primary
    ) {
        self.primary = primary
        self.secondary1 = secondary1
        self.secondary2 = secondary2
        self.secondary3 = secondary3
        self.pop1 = pop1
        self.pop2 = pop2
        self.pop3 = pop3
    }
}

extension ThemeColorGroup: Identifiable {}
extension ThemeColorGroup: Equatable {}


extension ThemeColorGroup {
    
    public static let `default` = ThemeColorGroup(
        primary: .primary,
        secondary1: .primary,
        pop1: .primary
    )
}

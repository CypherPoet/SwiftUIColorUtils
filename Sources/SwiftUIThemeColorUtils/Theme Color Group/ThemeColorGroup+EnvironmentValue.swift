import SwiftUI


private struct ThemeColorKey: EnvironmentKey {
    static let defaultValue: ThemeColorGroup = ThemeColorGroup.default
}


extension EnvironmentValues {
    
    public var themeColors: ThemeColorGroup {
        get { self[ThemeColorKey.self] }
        set { self[ThemeColorKey.self] = newValue }
    }
}


extension View {
    
    public func themeColors(_ themeColorGroup: ThemeColorGroup) -> some View {
        environment(\.themeColors, themeColorGroup)
    }
}

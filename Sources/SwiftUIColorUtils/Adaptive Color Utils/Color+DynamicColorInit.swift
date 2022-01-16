import SwiftUI


#if os(watchOS) || os(iOS) || os(tvOS)

extension Color {
    
    public init(
        light lightModeColor: @escaping @autoclosure () -> Color,
        dark darkModeColor: @escaping @autoclosure () -> Color
    ) {
        self.init(
            UIColor(
                light: UIColor(lightModeColor()),
                dark: UIColor(darkModeColor())
            )
        )
    }
}


#elseif os(macOS)


extension Color {
    
    public init(
        light lightModeColor: @escaping @autoclosure () -> Color,
        dark darkModeColor: @escaping @autoclosure () -> Color
    ) {
        self.init(
            NSColor(
                light: NSColor(lightModeColor()),
                dark: NSColor(darkModeColor())
            )
        )
    }
}

#endif




#if DEBUG

// MARK: - Previews

import SwiftUI

struct DynamicNSColorInit_Previews: PreviewProvider {
    
    public static var previews: some View {
        
        Group {
            Text("Dark Mode")
                .padding()
                .preferredColorScheme(.dark)
            
            Text("Light Mode")
                .padding()
                .preferredColorScheme(.light)
        }
        .background(Color(light: .purple, dark: .pink))
    }
}

#endif

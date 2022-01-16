import SwiftUI


extension Color {
    
    /// Initializes a color from a bundle's asset catalog.
    ///
    /// Initialization uses the following name-lookup format:
    ///
    ///     ```swift
    ///        "\(paletteName.rawValue)/\(semanticName.rawValue)"
    ///     ```
    internal init(
        paletteName: ColorPalette.PaletteName,
        semanticName: ColorPalette.SemanticName,
        bundle: Bundle? = nil
    ) {
        let nameString = Self.nameString(
            paletteName: paletteName,
            semanticName: semanticName
        )
        
        self.init(nameString, bundle: bundle)
    }
    
    
    internal static func nameString(
        paletteName: ColorPalette.PaletteName,
        semanticName: ColorPalette.SemanticName
    ) -> String {
        "\(paletteName.rawValue)/\(semanticName.rawValue)"
    }
}



// MARK: -  Previews

struct Previews_Color_InitFromPalette_Previews: PreviewProvider {
    
    static let theme1Palette = ColorPalette(
        name: "Theme 1",
        bundle: .module
    )
    
    
    static var colorsListView: some View {
        List {
            ColorSwatchListSection(
                headerTitle: "Theme 1",
                swatches: [
                    .init(
                        name: "Background - Main",
                        color: theme1Palette.mainBackground
                    ),
                    .init(
                        name: "Primary",
                        color: theme1Palette.primary
                    ),
                    .init(
                        name: "Secondary1",
                        color: theme1Palette.secondary1
                    ),
                    .init(
                        name: "Secondary2",
                        color: theme1Palette.secondary2
                    ),
                    .init(
                        name: "Secondary3",
                        color: theme1Palette.secondary3
                    ),
                    .init(
                        name: "Pop 1",
                        color: theme1Palette.pop1
                    ),
                    .init(
                        name: "Pop 2",
                        color: theme1Palette.pop2
                    ),
                ]
            )
        }
    }
    
    
    static var previews: some View {
        Group {
            colorsListView
                .preferredColorScheme(.dark)
            colorsListView
                .preferredColorScheme(.light)
        }
    }
}

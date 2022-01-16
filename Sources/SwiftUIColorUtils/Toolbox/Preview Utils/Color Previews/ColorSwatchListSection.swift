import SwiftUI


struct ColorSwatchListSection {
    var headerTitle: String
    var swatches: [ColorSwatch]
}


extension ColorSwatchListSection: View {
    
    var body: some View {
            Section(header: Text(headerTitle)) {
                ForEach(swatches, id: \.self) { colorSwatch in
                    HStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(colorSwatch.color)
//                            .border(Color.primary, width: 1)
//                            .clipShape(RoundedRectangle(cornerRadius: 8))
//                            .fill(.red)
                            .frame(width: 100, height: 100, alignment: .center)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .strokeBorder()
                            )

                        Text(colorSwatch.name)
                            .font(.title2)
//                            .foregroundColor(theme1ColorDictionary[colorName]!)
                    }
                }
            }
    }
}


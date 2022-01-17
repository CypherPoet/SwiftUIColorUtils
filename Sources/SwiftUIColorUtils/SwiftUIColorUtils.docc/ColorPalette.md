# ``SwiftUIColorUtils/ColorPalette``

A struct to represent a set of colors defined in a folder withing a bundle's asset catalog.


## Overview


## Topics

### Initializing SwiftUI Colors from a Palette

- ``Color/init(paletteName:semanticName:bundle:)``


### Structuring Palette Names and Semantic Names

A "pallete name" refers to the name of a folder of colors within an assset catalog.

A "semantic name" refers to the name of an individual Color Set within a palette's folder.

Together, this allows for a ``ColorPalette``'s computed `Color` properties to perform look ups for color sets within its associated palette and `Bundle`.

### Palette Names

### Semantic Names

- ``ColorPalette/SemanticName``

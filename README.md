# 🦕 ApexPredators

A SwiftUI iOS app showcasing the most fearsome predators from the Jurassic Park universe. Explore detailed information about each dinosaur, their movie appearances, and discover their locations on an interactive map.

## 📱 Features

- **Interactive Predator Gallery**: Browse through a comprehensive collection of Jurassic Park predators
- **Advanced Filtering**: Filter predators by type (Land, Air, Sea, or All)
- **Smart Search**: Search for specific predators by name
- **Alphabetical Sorting**: Toggle between alphabetical and original order
- **Detailed Information**: View comprehensive details for each predator including:
  - High-quality images
  - Movie appearances
  - Memorable movie scenes and descriptions
  - Interactive location maps
- **Interactive Maps**: 
  - View predator locations on detailed maps
  - Toggle between standard and satellite view
  - Navigate to full-screen map view
- **Dark Mode**: Beautiful dark theme optimized for the best viewing experience

## 🎯 Predator Types

- **🦕 Land Predators**: Terrestrial dinosaurs like Tyrannosaurus Rex, Velociraptor, and Carnotaurus
- **🦅 Air Predators**: Flying creatures like Pteranodon, Quetzalcoatlus, and Dimorphodon  
- **🦈 Sea Predators**: Marine predators like Mosasaurus and Spinosaurus

## 🛠 Technical Details

- **Platform**: iOS
- **Framework**: SwiftUI
- **Maps**: MapKit with SwiftUI integration
- **Data**: JSON-based predator information
- **Architecture**: MVVM pattern with SwiftUI
- **Minimum iOS Version**: iOS 17.0+

## 📁 Project Structure

```
ApexPredators/
├── ApexPredatorsApp.swift      # Main app entry point
├── ContentView.swift           # Main list view with filtering and search
├── Predator.swift              # Data models and types
├── Predators.swift             # Data management and filtering logic
├── PredatorDetail.swift        # Detailed predator view
├── PredatorMap.swift           # Interactive map view
├── jpapexpredators.json        # Predator data source
└── Assets.xcassets/            # Images and app icons
```

## 🚀 Getting Started

### Prerequisites

- Xcode 15.0 or later
- iOS 17.0+ deployment target
- macOS 14.0+ for development

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/ApexPredators.git
   ```

2. Open the project in Xcode:
   ```bash
   cd ApexPredators
   open ApexPredators.xcodeproj
   ```

3. Build and run the project (⌘+R)

## 🎮 Usage

1. **Browse Predators**: Scroll through the main list to see all available predators
2. **Search**: Use the search bar to find specific predators by name
3. **Filter**: Tap the filter button to show only Land, Air, Sea, or All predators
4. **Sort**: Tap the sort button to toggle between alphabetical and original order
5. **View Details**: Tap any predator to see detailed information, movie appearances, and location
6. **Explore Maps**: Tap the map in predator details to view full-screen interactive maps

## 📊 Data Source

The app uses a comprehensive JSON dataset (`jpapexpredators.json`) containing:
- Predator names and types
- Geographic coordinates for mapping
- Movie appearances and scene descriptions
- External links for additional information

## 🎨 Design Features

- **Modern SwiftUI Interface**: Clean, intuitive design following iOS design guidelines
- **Smooth Animations**: Fluid transitions and interactive elements
- **Responsive Layout**: Optimized for all iOS device sizes
- **Accessibility**: VoiceOver support and accessibility labels

## 🎥 Demo Video

<!-- Space reserved for demo video -->

https://github.com/user-attachments/assets/16dc79e8-7413-4685-aab7-fd5330422ca2

## 📄 License

This project is available under the MIT License. See the [LICENSE](LICENSE) file for more details.

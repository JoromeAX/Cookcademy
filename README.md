# Cookcademy

**Cookcademy** is a SwiftUI-based iOS application designed to help users store, manage, and organize their cooking recipes. With an intuitive interface, users can add new recipes, edit existing ones, and ensure their culinary creations persist across app launches using `FileManager` for data persistence. This project showcases modern iOS development practices, integrating SwiftUI for the UI and leveraging the `Codable` protocol and `FileManager` for robust data management.

---

## Features

- **Recipe Management**: Add, edit, and delete cooking recipes with details like ingredients, directions, and main information (name, description, author, and category).
- **Data Persistence**: Recipes are saved to the device's documents directory using `FileManager`, ensuring data remains available between app sessions.
- **Dynamic UI**: Built entirely with SwiftUI, offering a responsive and modern user experience.
- **Customizable Settings**: Previous iterations include options to adjust the app’s color scheme and hide optional steps (persisted with `@AppStorage`).
- **Error Handling**: Robust error management for encoding/decoding and file operations.

---

## Technologies Used

- **SwiftUI**: The app's user interface is built using SwiftUI (version 5.0+), providing a declarative and reactive framework for iOS development.
- **Codable Protocol**: Utilized to encode recipe data into JSON format and decode it back into Swift objects, ensuring seamless data serialization.
- **FileManager**: Employed to interact with the iOS file system, saving recipes as JSON files in the documents directory and loading them on app launch.
- **View Lifecycle Events**: Leverages SwiftUI’s `.onAppear` and `.onDisappear` modifiers to trigger data loading and saving at appropriate times.
- **ObservableObject**: Manages the app’s data state with Combine’s `ObservableObject` for real-time UI updates.

This project demonstrates how to integrate data persistence into a SwiftUI application, combining modern iOS development tools with practical functionality.

---

## Project Structure

```
Cookcademy/
├── Models/
│   ├── Recipe.swift           # Core recipe structure with Codable conformance
│   ├── MainInformation.swift  # Recipe metadata (name, description, author, category)
│   ├── Ingredient.swift       # Ingredient details with units
│   ├── Direction.swift        # Cooking steps with optional flag
├── Views/
│   ├── MainTabView.swift      # Main app navigation with tabbed interface
│   ├── RecipeDetailView.swift # Detailed view for editing/displaying recipes
│   ├── SettingsView.swift     # Settings UI (color scheme, optional steps toggle)
├── ViewModels/
│   ├── RecipeData.swift       # Manages recipe data persistence and state
├── Utils/
│   ├── AppColor.swift         # Color definitions for the app
│   ├── Color+RawRepresentable.swift # Extension for persisting Color with AppStorage
└── CookcademyApp.swift        # App entry point
```

---

## Installation

### Prerequisites
- **Xcode**: Version 14.0 or later.
- **iOS**: Compatible with iOS 15.0 or later.
- **Swift**: Version 5.5 or later.

### Steps
1. **Clone the Repository**
2. **Open in Xcode**:
   - Navigate to the project directory and open `Cookcademy.xcodeproj` in Xcode.
3. **Build and Run**:
   - Select a simulator (e.g., iPhone 14) or a physical device.
   - Press `Cmd + R` to build and run the app.

### Dependencies
No external dependencies are required. The project uses only native iOS frameworks (`SwiftUI`, `Foundation`).

---

## Usage

1. **Launch the App**:
   - Upon opening, the app loads any previously saved recipes from the documents directory.
2. **Add a Recipe**:
   - Navigate to the "Recipes" tab.
   - Tap the "New Recipe" button to create a recipe.
   - Enter details (name, description, ingredients, directions) and save.
3. **Edit a Recipe**:
   - Tap on a recipe from the list to open `RecipeDetailView`.
   - Modify the details and dismiss the view to save changes.
4. **Persist Data**:
   - Recipes are automatically saved when added or edited and loaded on app launch.
5. **Settings (Optional)**:
   - Access the "Settings" tab to adjust the color scheme or toggle optional steps visibility (if implemented from previous articles).

---

## Acknowledgments

- Inspired by Codecademy’s SwiftUI tutorials.
- Thanks to the Swift community for excellent resources and documentation.

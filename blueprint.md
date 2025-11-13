# Dozo App Blueprint

## Overview

Dozo is a Flutter application designed to showcase a modern, themed UI with a clear separation of concerns. It features a theme provider for easy light/dark mode toggling, and a simple, elegant UI centered around an "Orders" screen.

## Project Structure & Features

### Core
- **`main.dart`**: Entry point of the application. Initializes the `ThemeProvider` and sets up the root `MyApp` widget.
- **`app.dart`**: The main application widget. It builds the `MaterialApp` and includes the primary `Scaffold` with the main `AppBar` and body.
- **Services (`lib/core/services`)**
  - `theme_provider.dart`: A `ChangeNotifier` that manages the application's `ThemeMode` (light, dark, or system) and notifies listeners of changes.
- **Themes (`lib/core/themes`)**
  - `light_theme.dart`: Defines the `ThemeData` for the light theme.
  - `dark_theme.dart`: Defines the `ThemeData` for the dark theme.
  - `colors.dart`: Defines the color constants for both light and dark themes.

### Features
- **Orders (`lib/features/orders`)**
  - **`views/orders_screen.dart`**: A stateless widget that displays the main orders view. It contains a search bar at the top and a placeholder for the order list.
  - **`widgets/search_bar.dart`**: A dedicated widget for the search bar UI, placed within the `OrdersScreen`.

## Current Style & Design

- **Theming**: The app uses the `provider` package for state management of the theme. It supports both a light and a dark theme, which can be toggled by the user.
- **AppBar**: The main `AppBar` is configured with:
  - A centered title displaying "Orders".
  - A theme toggle `IconButton` on the far left (in the `leading` position) to switch between light and dark modes.
  - A profile `IconButton` on the far right (in the `actions` list).
- **Search Bar**: A search bar is present at the top of the `OrdersScreen` body, styled to match the current theme (light/dark).

## Plan for Current Change

**Request:** "in orders_screen.dart. add a search bar in the body top. but not inside the appbar"

**Completed Steps:**
1.  **Create `search_bar.dart` widget**: Created a new reusable widget for the search bar UI at `lib/features/orders/presentation/widgets/search_bar.dart`. This widget adapts its colors based on the current theme.
2.  **Update `orders_screen.dart`**: Modified `lib/features/orders/presentation/views/orders_screen.dart` to include the `OrdersSearchBar` at the top of a `Column` in the body.
3.  **File Correction**: Initially created a duplicate `orders_screen.dart` but corrected this by moving the logic to the correct file in the `views` subdirectory and deleting the duplicate.


# Dozo App Blueprint

## Overview

Dozo is a Flutter application designed to showcase a modern, themed UI with a clear separation of concerns. It features a theme provider for easy light/dark mode toggling, and a simple, elegant UI centered around an "Orders" screen.

## Project Structure & Features

### Core
- **`main.dart`**: Entry point of the application. Initializes the `ThemeProvider` and sets up the root `MyApp` widget.
- **`app.dart`**: The main application widget. It builds the `MaterialApp` and includes the primary `Scaffold` with the main `AppBar` and body.
- **Services (`lib/core/services`)
  - `theme_provider.dart`: A `ChangeNotifier` that manages the application's `ThemeMode` (light, dark, or system) and notifies listeners of changes.
- **Themes (`lib/core/themes`)**
  - `light_theme.dart`: Defines the `ThemeData` for the light theme.
  - `dark_theme.dart`: Defines the `ThemeData` for the dark theme.

### Features
- **Orders (`lib/features/orders`)**
  - **`orders_screen.dart`**: A stateless widget that currently displays a simple centered text placeholder for the orders view.

## Current Style & Design

- **Theming**: The app uses the `provider` package for state management of the theme. It supports both a light and a dark theme, which can be toggled by the user.
- **AppBar**: The main `AppBar` is configured with:
  - A centered title displaying "Orders".
  - A theme toggle `IconButton` on the far left (in the `leading` position) to switch between light and dark modes.
  - A profile `IconButton` on the far right (in the `actions` list).

## Plan for Current Change

**Request:** "add a profile icon to the right"

**Completed Steps:**
1.  **Modify `app.dart`**: Added an `IconButton` with `Icons.person` to the `actions` property of the `AppBar`.
2.  **Center Title**: Set `centerTitle: true` on the `AppBar`.
3.  **Move Theme Toggle**: Moved the theme toggle `IconButton` from the `actions` list to the `leading` property of the `AppBar`.


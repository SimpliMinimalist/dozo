# Project Blueprint: Order Summary App

## Overview

This is a Flutter application designed to provide a dashboard for managing orders. The main screen displays a summary of orders in different states, such as "To Pack," "In Transit," and "Delivered." The application is built with a clean, modern UI and supports both light and dark themes.

## Style, Design, and Features

### Architecture
- **State Management**: The app uses the `provider` package for app-wide state management, specifically for managing the theme.
- **Structure**: The code is organized by feature, with a dedicated `features/orders` directory containing the views and widgets for the order summary screen. Core services like theme management are in `core/`.

### UI and Design
- **Theming**:
    - **Light/Dark Mode**: Full support for both light and dark themes.
    - **Theme Toggle**: A prominent icon in the `AppBar` allows users to instantly switch between themes.
    - **Centralized Theme Files**: `light_theme.dart` and `dark_theme.dart` define the color schemes and component styles, ensuring a consistent look and feel.
- **Components**:
    - **`OrdersScreen`**: The main screen that houses the order summaries.
    - **`SearchBarWidget`**: A simple, clean search input field at the top of the screen.
    - **`OrderSummaryCard`**: A reusable card widget to display a specific order status. Each card features:
        - A colored circular background for an icon.
        - A custom SVG icon representing the order status.
        - The count of orders for that status.
        - The title of the status.
    - **`FloatingActionButton`**: A FAB with a custom `store.svg` icon. The icon is theme-aware and resizes appropriately.
- **Assets**:
    - **SVG Icons**: The app uses custom SVG icons for a sharp, scalable look. Icons are managed in the `assets/icons/` directory.

### Current Plan: FAB Icon Update
The following steps were taken to update the `FloatingActionButton`:
1.  **Custom Icon**: Replaced the default `Icon` with a custom `SvgPicture` using `store.svg`.
2.  **Theming**: Made the icon's color theme-aware, using the `foregroundColor` from `floatingActionButtonTheme`.
3.  **Sizing**: Adjusted the icon size for better visual balance.
4.  **Deprecation Fix**: Replaced the deprecated `color` property with `colorFilter` for `SvgPicture`.

---
*Previous Plan: Initial Implementation*
1.  **Project Setup**: Initialized a standard Flutter project.
2.  **Dependency Management**: Added `provider` for state management and `flutter_svg` for using SVG assets.
3.  **Theming Implementation**:
    - Created a `ThemeProvider` class to manage the application's theme state.
    - Defined `lightTheme` and `darkTheme` in separate files.
    - Integrated the `ThemeProvider` into the `MyApp` widget.
4.  **Feature Development: Orders Screen**:
    - Created the main `OrdersScreen` view.
    - Built the `SearchBarWidget` for future search functionality.
    - Designed and implemented the `OrderSummaryCard` widget for displaying order statistics.
    - Added custom SVG icons for each order status and declared them in `pubspec.yaml`.
5.  **Bug Fixes**:
    - Resolved a missing import for the `SearchBarWidget`.
    - Fixed the theme toggle functionality by connecting the `onPressed` event in the `AppBar` to the `ThemeProvider`.

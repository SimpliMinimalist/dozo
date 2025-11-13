# Project Blueprint: Order Summary App

## Overview

This is a Flutter application designed to provide a dashboard for managing orders. The main screen displays a summary of orders in different states, such as "To Pack," "In Transit," and "Delivered." The application is built with a clean, modern UI and supports both light and dark themes.

## Style, Design, and Features

### Architecture
- **State Management**: The app uses the `provider` package for app-wide state management, specifically for managing the theme.
- **Structure**: The code is organized by feature, with a dedicated `features/orders` directory containing the views and widgets for the order summary screen. Core services like theme management are in `core/`.

### UI and Design
- **Layout**: 
    - The main content area has adjusted horizontal padding to control the width of elements like the search bar and order cards.
    - The vertical spacing between all elements on the order screen is now visually consistent.
- **Theming**:
    - **Light/Dark Mode**: Full support for both light and dark themes.
    - **Theme Toggle**: A prominent icon in the `AppBar` allows users to instantly switch between themes.
    - **Centralized Theme Files**: `light_theme.dart` and `dark_theme.dart` define the color schemes and component styles, ensuring a consistent look and feel.
    - **Custom Theme Extension**: A `ThemeExtension` provides custom colors, such as `searchBarPlaceholder`, for more granular control.
- **Components**:
    - **`OrdersScreen`**: The main screen that houses the order summaries.
    - **`SearchBarWidget`**: A simple, clean search input field with a very light placeholder text color for a subtle effect.
    - **`OrderSummaryCard`**: A reusable card widget with a softer, rounded border to display a specific order status.
    - **`FloatingActionButton`**: A FAB with a custom `store.svg` icon. The icon is theme-aware.
    - **`AppBar`**: The top app bar features a custom `profile.svg` icon, which is also theme-aware.
- **Assets**:
    - **SVG Icons**: The app uses custom SVG icons for a sharp, scalable look.

### Current Plan: Layout Adjustment
1.  **Vertical Spacing**: Adjusted the `SizedBox` between the `SearchBarWidget` and the first `OrderSummaryCard` to `14.0` to ensure visually consistent spacing between all elements on the screen.

---
*Previous Plan: Style Refinements*
1.  **Search Bar Placeholder**: Further lightened the `searchBarPlaceholder` color in the theme extension to make the placeholder text even more subtle.

---
*Previous Plan: Style Refinements*
1.  **Search Bar Placeholder**: Adjusted the `searchBarPlaceholder` color in the theme extension to reduce the contrast of the placeholder text.
2.  **Card Border Radius**: Increased the border radius on the `OrderSummaryCard` from 12px to 15px for a softer appearance.

---
*Previous Plan: Profile Icon Update*
1.  **Custom Icon**: Replaced the default `Icon(Icons.person)` with a custom `SvgPicture` using `profile.svg` in the `AppBar`.
2.  **Theming**: Made the new icon's color theme-aware.

---
*Previous Plan: Layout Adjustment*
1.  **Padding Update**: Increased the horizontal padding in `OrdersScreen` to reduce the width of the `SearchBarWidget` and `OrderSummaryCard` widgets.

---
*Previous Plan: FAB Icon Update*
1.  **Custom Icon**: Replaced the default `Icon` with a custom `SvgPicture` using `store.svg`.
2.  **Theming**: Made the icon's color theme-aware.

---
*Previous Plan: Initial Implementation*
1.  **Project Setup**: Initialized a standard Flutter project.
2.  **Dependencies**: Added `provider` and `flutter_svg`.
3.  **Theming**: Implemented a `ThemeProvider` and defined light/dark themes.
4.  **Feature Development**: Created the `OrdersScreen`, `SearchBarWidget`, and `OrderSummaryCard`.
5.  **Bug Fixes**: Resolved various import and functionality issues.

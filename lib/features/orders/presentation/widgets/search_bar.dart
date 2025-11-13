import 'package:flutter/material.dart';
import 'package:myapp/core/themes/colors.dart';

class OrdersSearchBar extends StatelessWidget {
  const OrdersSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final searchBarBackgroundColor =
        isDarkMode ? searchBarBackgroundDark : searchBarBackgroundLight;
    final searchBarPlaceholderColor =
        isDarkMode ? searchBarPlaceholderDark : searchBarPlaceholderLight;
    final searchBarIconColor = isDarkMode ? iconDark : iconLight;

    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 16.0, 40.0, 8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Orders...',
          hintStyle: TextStyle(color: searchBarPlaceholderColor),
          prefixIcon: Icon(Icons.search, color: searchBarIconColor),
          filled: true,
          fillColor: searchBarBackgroundColor,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

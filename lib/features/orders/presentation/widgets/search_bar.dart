import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/core/themes/colors.dart'; // Direct import of colors

class OrdersSearchBar extends StatelessWidget {
  const OrdersSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final searchBarBackgroundColor =
        isDarkMode ? searchBarBackgroundDark : searchBarBackgroundLight;
    final searchBarPlaceholderColor =
        isDarkMode ? searchBarPlaceholderDark : searchBarPlaceholderLight;
    // Using the color constants directly
    final searchBarIconColor = isDarkMode ? iconDark : iconLight; 

    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 24.0, 40.0, 8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Orders...',
          hintStyle: TextStyle(color: searchBarPlaceholderColor),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              colorFilter: ColorFilter.mode(searchBarIconColor, BlendMode.srcIn),
            ),
          ),
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

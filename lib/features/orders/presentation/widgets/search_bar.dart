
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/core/themes/theme_extension.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for orders...',
          hintStyle: TextStyle(color: Theme.of(context).searchBarPlaceholder),
          fillColor: Theme.of(context).searchBarBackground,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).searchBarIcon,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

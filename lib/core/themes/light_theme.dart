import 'package:flutter/material.dart';
import 'package:myapp/core/themes/colors.dart';


final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryLight,
  scaffoldBackgroundColor: backgroundLight,
  appBarTheme: const AppBarTheme(
    backgroundColor: topAppBarLight,
    elevation: 0,
    iconTheme: IconThemeData(color: iconLight),
  ),
  colorScheme: const ColorScheme.light(
    primary: primaryLight,
    secondary: primaryLight,
    surface: surfaceLight,
  ),
);

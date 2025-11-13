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
    titleTextStyle: TextStyle(color: textLight, fontSize: 20, fontWeight: FontWeight.bold)
  ),
  colorScheme: const ColorScheme.light(
    primary: primaryLight,
    secondary: primaryLight,
    surface: surfaceLight,
    onSurface: textLight,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: surfaceLight,
    hintStyle: TextStyle(color: textLight,)
  ),
);

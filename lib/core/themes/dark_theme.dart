import 'package:flutter/material.dart';
import 'package:myapp/core/themes/colors.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryDark,
  scaffoldBackgroundColor: backgroundDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: topAppBarDark,
    elevation: 0,
    iconTheme: IconThemeData(color: iconDark),
    titleTextStyle: TextStyle(color: textDark, fontSize: 20, fontWeight: FontWeight.bold)
  ),
  colorScheme: const ColorScheme.dark(
    primary: primaryDark,
    secondary: primaryDark,
    surface: surfaceDark,
    onSurface: textDark,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: surfaceDark,
    hintStyle: TextStyle(color: textDark,)
  ),
);

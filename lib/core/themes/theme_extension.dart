import 'package:flutter/material.dart';

extension ThemeExtension on ThemeData {
  Color get searchBarBackground => brightness == Brightness.dark ? Colors.grey[800]! : Colors.grey[200]!;
  Color get searchBarPlaceholder => brightness == Brightness.dark ? Colors.grey[700]! : Colors.grey[400]!;
  Color get searchBarIcon => brightness == Brightness.dark ? Colors.grey[400]! : Colors.grey[600]!;
}

import 'package:flutter/material.dart';

extension ThemeExtras on ThemeData {
  Color get textGrey => brightness == Brightness.light ? const Color(0xFF8E8E93) : const Color(0xFF8E8E93);
  Color get searchBarBackground => brightness == Brightness.light ? const Color(0xFFE4E3E8) : const Color(0xFF1C1C1E);
  Color get searchBarPlaceholder => brightness == Brightness.light ? const Color(0xFF999999) : const Color(0xFF9F9F9F);
  Color get fabBackground => brightness == Brightness.light ? const Color(0xFF0D99FF) : const Color(0xFF0D99FF);
  Color get fabIcon => brightness == Brightness.light ? const Color(0xFFFFFFFF) : const Color(0xFFFFFFFF);

}

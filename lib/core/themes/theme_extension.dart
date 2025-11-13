import 'package:flutter/material.dart';
import 'package:myapp/core/themes/colors.dart';

extension ThemeExtras on ThemeData {
  Color get textGrey => brightness == Brightness.light ? textLightGrey : textDarkGrey;
  Color get searchBarBackground => brightness == Brightness.light ? searchBarBackgroundLight : searchBarBackgroundDark;
  Color get searchBarPlaceholder => brightness == Brightness.light ? searchBarPlaceholderLight : searchBarPlaceholderDark;
  Color get searchBarIcon => brightness == Brightness.light ? iconLight : iconDark;
  Color get fabBackground => brightness == Brightness.light ? fabBackgroundLight : fabBackgroundDark;
  Color get fabIcon => brightness == Brightness.light ? fabIconLight : fabIconDark;

}

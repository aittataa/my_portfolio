import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // static const Color clearColor = Color(0xff08ff00);
  // static const Color errorColor = Color(0xfffd0000);

  static const Color mainColor = Color(0xFFF0F0F0);
  static const Color backgroundColor_1 = Color(0xFF213a50);
  static const Color backgroundColor_2 = Color(0xFF071930);
  static const Color transparentColor = Color(0x00000000);
  static const Color shadowColor = Color(0x1F000000);
  static const Color borderColor = Color(0x8A000000);

  /// Icon Colors
  static const Color primaryIconColor = Color(0xFFFFFFFF);
  static const Color secondaryIconColor = Color(0xFF000000);

  /// Text Colors
  static const Color primaryTextColor = Color(0xFFFFFFFF);
  static const Color secondaryTextColor = Color(0xFF000000);

  static ThemeData get themeData {
    return ThemeData();
  }
}

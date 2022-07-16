import 'package:flutter/material.dart';

import 'app_theme.dart';

class AppConstant {
  AppConstant._();

  /// TODO : Curves
  static const Curve curve = Curves.linearToEaseOut;

  /// TODO : Durations
  static const Duration durationSplash = Duration(milliseconds: 1500);
  static const Duration durationAnimated = Duration(milliseconds: 1000);
  static const Duration duration = Duration(milliseconds: 1500);

  static BoxShadow boxShadow = BoxShadow(
    color: AppTheme.shadowColor.withOpacity(.25),
    blurRadius: 10,
    spreadRadius: .1,
  );
}

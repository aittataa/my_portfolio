import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/app/config/themes/app_theme.dart';

class AppFunction {
  AppFunction._();

  static configureDependencies() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: AppTheme.transparentColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: AppTheme.transparentColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    );
  }
}

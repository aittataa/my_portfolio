import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/config/constants/app_constant.dart';
import 'package:my_portfolio/app/config/themes/app_theme.dart';
import 'package:my_portfolio/app/modules/home/views/home_view.dart';
import 'package:my_portfolio/app/modules/splash/widgets/splash.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnimatedSplashScreen(
        splash: Splash(),
        nextScreen: HomeView(),
        curve: AppConstant.curve,
        backgroundColor: AppTheme.primaryBackColor,
        splashTransition: SplashTransition.slideTransition,
        animationDuration: AppConstant.durationSplash,
        splashIconSize: double.infinity,
      ),
    );
  }
}

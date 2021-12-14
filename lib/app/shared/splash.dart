import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/config/constants/app_constant.dart';
import 'package:my_portfolio/app/config/themes/app_theme.dart';
import 'package:my_portfolio/app/modules/home/views/home_view.dart';
import 'package:my_portfolio/app/shared/bounce_point.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: BouncePoint(),
      nextScreen: HomeView(),
      curve: AppConstant.curve,
      backgroundColor: AppTheme.transparentColor,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
      animationDuration: AppConstant.durationSplash,
    );
  }
}

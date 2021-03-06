import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../config/app_constant.dart';
import '../config/app_theme.dart';
import '../modules/home/views/home_view.dart';
import 'bounce_point.dart';

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

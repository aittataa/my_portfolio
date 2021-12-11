import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/config/constants/app_constant.dart';
import 'package:my_portfolio/app/config/functions/app_function.dart';
import 'package:my_portfolio/app/config/messages/app_message.dart';
import 'package:my_portfolio/app/config/themes/app_theme.dart';
import 'package:my_portfolio/app/modules/home/views/home_view.dart';
import 'package:my_portfolio/app/routes/app_pages.dart';
import 'package:my_portfolio/app/shared/bounce_point.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppFunction.configureDependencies();
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.full,
      initialRoute: AppPages.INITIAL,
      title: AppMessage.appTitle,
      theme: AppTheme.themeData,
      getPages: AppPages.routes,
      home: AnimatedSplashScreen(
        splash: BouncePoint(),
        nextScreen: HomeView(),
        curve: AppConstant.curve,
        backgroundColor: AppTheme.transparentColor,
        splashTransition: SplashTransition.slideTransition,
        animationDuration: AppConstant.durationSplash,
        splashIconSize: double.infinity,
      ),
    );
  }
}

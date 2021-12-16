import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/config/functions/app_function.dart';
import 'package:my_portfolio/app/config/messages/app_message.dart';
import 'package:my_portfolio/app/shared/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUrlStrategy(PathUrlStrategy());
  AppFunction.configureDependencies();
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppMessage.profileName,
      home: Splash(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/config/functions/app_function.dart';
import 'package:my_portfolio/app/config/messages/app_message.dart';
import 'package:my_portfolio/app/routes/app_pages.dart';
import 'package:my_portfolio/app/shared/splash.dart';

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
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      highContrastDarkTheme: ThemeData.dark(),
      highContrastTheme: ThemeData.dark(),
      getPages: AppPages.routes,
      home: Splash(),
    );
  }
}

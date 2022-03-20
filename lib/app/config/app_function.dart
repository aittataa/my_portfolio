import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class AppFunction {
  AppFunction._();

  static launchURL(String path) async {
    if (await canLaunch(path)) {
      await launch(path);
    } else {
      throw Exception("Couldn't Launch $path");
    }
  }

  static configureDependencies() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }
}

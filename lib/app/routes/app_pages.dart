import 'package:get/get.dart';
import 'package:my_portfolio/app/config/constants/app_constant.dart';
import 'package:my_portfolio/app/modules/home/bindings/home_binding.dart';
import 'package:my_portfolio/app/modules/home/views/home_view.dart';
import 'package:my_portfolio/app/modules/splash/bindings/splash_binding.dart';
import 'package:my_portfolio/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
      curve: AppConstant.curve,
      transitionDuration: AppConstant.durationRoute,
      transition: AppConstant.transitionRoute,
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      curve: AppConstant.curve,
      transitionDuration: AppConstant.durationRoute,
      transition: AppConstant.transitionRoute,
    ),
  ];
}

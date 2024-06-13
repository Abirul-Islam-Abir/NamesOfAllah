import 'package:get/get.dart';

import '../modules/choose_language/bindings/choose_language_binding.dart';
import '../modules/choose_language/views/choose_language_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/name_list/bindings/name_list_binding.dart';
import '../modules/name_list/views/name_list_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>   HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.NAME_LIST,
      page: () => const NameListView(),
      binding: NameListBinding(),
    ),
    GetPage(
      name: _Paths.CHOOSE_LANGUAGE,
      page: () => const ChooseLanguageView(),
      binding: ChooseLanguageBinding(),
    ),
  ];
}

import 'package:allahor_name/app/data/translation.dart';
import 'package:allahor_name/app/modules/splash/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() => runApp(const NamesOfAllah());
int index = 0;
class NamesOfAllah extends StatelessWidget {
  const NamesOfAllah({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Messages(),
      locale: Messages.locale,
      fallbackLocale: Messages.fallbackLocale,
      getPages: AppPages.routes,
      home: const SplashView(),
    );
  }
}
// var locale = Locale('en', 'US');
// Get.updateLocale(locale);
import 'package:allahor_name/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:allahor_name/app/data/translation.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/choose_language_controller.dart';

class ChooseLanguageView extends GetView<ChooseLanguageController> {
  const ChooseLanguageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbar(title: "Select a Language"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomPath(
                      title: "English",
                      onTap: () {Get.updateLocale(Messages.locales[0]).then((value) => Get.offNamed(Routes.HOME));},
                      color: Colors.deepPurple,
                    ),
                    CustomPath(
                        title: "বাংলা", onTap: () {Get.updateLocale(Messages.locales[1]).then((value) => Get.offNamed(Routes.HOME));}, color: Colors.green),
                    CustomPath(title: "हिंदी", onTap: () {Get.updateLocale(Messages.locales[2]).then((value) => Get.offNamed(Routes.HOME));}, color: Colors.red),
                    CustomPath(
                        title: "العربية", onTap: () {Get.updateLocale(Messages.locales[3]).then((value) => Get.offNamed(Routes.HOME));}, color: Colors.cyan),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomPath extends StatelessWidget {
  const CustomPath({
    super.key,
    this.onTap,
    required this.title,
    required this.color,
  });
  final Function()? onTap;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: StarClipper(11),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 120,
          color: color,
          child: Center(
              child: Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

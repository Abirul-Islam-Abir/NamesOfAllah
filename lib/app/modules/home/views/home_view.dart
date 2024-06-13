import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:get/get.dart';

import '../../../data/translation.dart';
import '../../../theme/app_colors.dart';
import '../../splash/controllers/splash_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbar(
              title: "allNamesOfAllah".tr,
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: ninetyNineNamesOfAllah.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( 
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      Locale currentLocale = Get.locale ?? Locale('en', 'US');

                      // Perform actions based on the current locale
                      String message;
                      if (currentLocale.languageCode == 'hi') {
                        message = 'hindi';
                      } else if (currentLocale.languageCode == 'en') {
                        message = 'english';
                      } else if (currentLocale.languageCode == 'bn') {
                        message = 'bangla';
                      } else {
                        message = 'arabic';
                      }
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                    Text(
                                 ninetyNineNamesOfAllah[index]
                                                  ['arabicName'],
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  message == 'english'
                                      ? ninetyNineNamesOfAllah[index]['name']
                                      : message == 'hindi'
                                          ? ninetyNineNamesOfAllah[index]['hindiName']
                                          : message == 'bangla'
                                              ? ninetyNineNamesOfAllah[index]
                                                  ['banglaName']
                                              : ninetyNineNamesOfAllah[index]
                                                  ['arabicName'],
                                  style: TextStyle(fontSize: 18),
                                ),
                                 Text(
                                  message == 'english'
                                      ? ninetyNineNamesOfAllah[index]['meaning']
                                      : message == 'hindi'
                                          ? ninetyNineNamesOfAllah[index]['hindiMeaning']
                                          : message == 'bangla'
                                              ? ninetyNineNamesOfAllah[index]
                                                  ['banglaMeaning']
                                              : ninetyNineNamesOfAllah[index]
                                                  ['arabicMeaning'],
                                  style: TextStyle(fontSize: 15),
                                ),
                                 Text(
                                  message == 'english'
                                      ? ninetyNineNamesOfAllah[index]['description']['english']
                                      : message == 'hindi'
                                          ? ninetyNineNamesOfAllah[index]['description']['hindi']
                                          : message == 'bangla'
                                              ? ninetyNineNamesOfAllah[index]
                                                 ['description']['bangla']
                                              : ninetyNineNamesOfAllah[index]
                                                 ['description']['arabic'],
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                     
                    })),
          ],
        ),
      ),
    );
  }
}

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: ClipPath(
        clipper: MovieTicketBothSidesClipper(),
        child: Container(
          height: 100,
          color: AppColor.kPrimary,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

class ClipiScreen extends StatelessWidget {
  const ClipiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

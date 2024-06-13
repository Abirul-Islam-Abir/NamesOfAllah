import 'package:get/get.dart';

import '../controllers/name_list_controller.dart';

class NameListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NameListController>(
      () => NameListController(),
    );
  }
}

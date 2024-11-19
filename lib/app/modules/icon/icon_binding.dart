import 'package:get/get.dart';

import 'icon_controller.dart';

class IconBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IconController>(
      () => IconController(),
    );
  }
}

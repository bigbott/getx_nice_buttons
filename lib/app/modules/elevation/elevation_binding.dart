import 'package:get/get.dart';

import 'elevation_controller.dart';

class ElevationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElevationController>(
      () => ElevationController(),
    );
  }
}

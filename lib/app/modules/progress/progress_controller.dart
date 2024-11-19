import 'package:get/get.dart';

class ProgressController extends GetxController {
  final isLoading = false.obs;

  void simulateProgress(finish) async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 3)); // Simulate work
    isLoading.value = false;
    finish();
  }
}

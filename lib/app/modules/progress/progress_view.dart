import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nice_buttons/nice_buttons.dart';
import 'progress_controller.dart';

class ProgressView extends GetView<ProgressController> {
  const ProgressView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Button Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() => NiceButtons(
          stretch: false,
          progress: controller.isLoading.value,
          gradientOrientation: GradientOrientation.Horizontal,
          startColor: Colors.green,
          endColor: Colors.lightGreen,
          borderColor: Colors.green.shade700,
          onTap: (finish) {
            controller.simulateProgress(finish);
          },
          child: const Text(
            'Click to Start Progress',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        )),
      ),
    );
  }
}

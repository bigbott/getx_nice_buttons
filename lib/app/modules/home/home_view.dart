import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_nice_buttons/app/routes/app_pages.dart';

import 'home_controller.dart';

import 'package:nice_buttons/nice_buttons.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nice Buttons Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NiceButtons(
              stretch: false,
              gradientOrientation: GradientOrientation.Horizontal,
              startColor: Colors.purple,
              endColor: Colors.deepPurple,
              borderColor: Colors.deepPurple.shade700,
              onTap: (finish) {
                Get.toNamed(Routes.ELEVATION);
              },
              child: const Text(
                'Horizontal Gradient',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            NiceButtons(
              stretch: false,
              gradientOrientation: GradientOrientation.Vertical,
              startColor: Colors.orange,
              endColor: Colors.deepOrange,
              borderColor: Colors.deepOrange.shade700,
              onTap: (finish) {
               Get.toNamed(Routes.PROGRESS);
              },
              child: const Text(
                'Vertical Gradient',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

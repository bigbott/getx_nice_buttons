import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nice_buttons/app/routes/app_pages.dart';
import 'package:nice_buttons/nice_buttons.dart';
import 'elevation_controller.dart';

class ElevationView extends GetView<ElevationController> {
  const ElevationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Border Thickness Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NiceButtons(
              stretch: false,
              borderThickness: 5,
              startColor: Colors.blue,
              endColor: Colors.lightBlue,
              borderColor: Colors.blue.shade700,
              onTap: (finish) {
                Get.toNamed(Routes.SOCIAL);
              },
              child: const Text(
                'Thick Border (5)',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            NiceButtons(
              stretch: false,
              borderThickness: 3,
              startColor: Colors.blue,
              endColor: Colors.lightBlue,
              borderColor: Colors.blue.shade700,
              onTap: (finish) {
                print('Medium border button tapped');
              },
              child: const Text(
                'Medium Border (3)',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            NiceButtons(
              stretch: false,
              borderThickness: 1,
              startColor: Colors.blue,
              endColor: Colors.lightBlue,
              borderColor: Colors.blue.shade700,
              onTap: (finish) {
                print('Thin border button tapped');
              },
              child: const Text(
                'Thin Border (1)',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

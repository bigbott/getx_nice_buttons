import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nice_buttons/app/routes/app_pages.dart';
import 'package:nice_buttons/nice_buttons.dart';
import 'social_controller.dart';

class SocialView extends GetView<SocialController> {
  const SocialView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NiceButtons(
              width: 80,
              height: 80,
              stretch: false,
              borderRadius: 40,
              startColor: Colors.blue,
              endColor: Colors.blueAccent,
              borderColor: Colors.blue.shade700,
              onTap: (finish) {
                Get.toNamed(Routes.ICON);
              },
              child: const Icon(
                Icons.flutter_dash,
                color: Colors.white,
                size: 50,
              ),
            ),
            const SizedBox(width: 20),
            NiceButtons(
              width: 80,
              height: 80,
              stretch: false,
              borderRadius: 40,
              startColor: Colors.red,
              endColor: Colors.redAccent,
              borderColor: Colors.red.shade700,
              onTap: (finish) {
                print('YouTube button tapped');
              },
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 50,
              ),
            ),
            const SizedBox(width: 20),
            NiceButtons(
              width: 80,
              height: 80,
              stretch: false,
              borderRadius: 40,
              startColor: Colors.purple,
              endColor: Colors.purpleAccent,
              borderColor: Colors.purple.shade700,
              onTap: (finish) {
                print('Instagram button tapped');
              },
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

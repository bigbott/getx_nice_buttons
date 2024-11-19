import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nice_buttons/nice_buttons.dart';
import 'icon_controller.dart';

class IconView extends GetView<IconController> {
  const IconView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Buttons Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NiceButtons(
              stretch: false,
              startColor: Colors.teal,
              endColor: Colors.tealAccent.shade400,
              borderColor: Colors.teal.shade700,
              onTap: (finish) {
                print('Horizontal icon button tapped');
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children:  [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Settings',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            NiceButtons(
              stretch: false,
              startColor: Colors.amber.shade700,
              endColor: Colors.orangeAccent.shade700,
              borderColor: const Color.fromARGB(255, 105, 96, 17),
              onTap: (finish) {
                print('Vertical icon button tapped');
              },
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children:  [
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Alerts',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

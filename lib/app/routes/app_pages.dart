import 'package:get/get.dart';

import '../modules/elevation/elevation_binding.dart';
import '../modules/elevation/elevation_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/icon/icon_binding.dart';
import '../modules/icon/icon_view.dart';
import '../modules/progress/progress_binding.dart';
import '../modules/progress/progress_view.dart';
import '../modules/social/social_binding.dart';
import '../modules/social/social_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ELEVATION,
      page: () => const ElevationView(),
      binding: ElevationBinding(),
    ),
    GetPage(
      name: _Paths.PROGRESS,
      page: () => const ProgressView(),
      binding: ProgressBinding(),
    ),
    GetPage(
      name: _Paths.SOCIAL,
      page: () => const SocialView(),
      binding: SocialBinding(),
    ),
    GetPage(
      name: _Paths.ICON,
      page: () => const IconView(),
      binding: IconBinding(),
    ),
  ];
}

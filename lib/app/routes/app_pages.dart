import 'package:get/get.dart';

import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main_menu/dashboard/bindings/dashboard_binding.dart';
import '../modules/main_menu/dashboard/views/dashboard_view.dart';
import '../modules/main_menu/detail_olahraga/bindings/detail_olahraga_binding.dart';
import '../modules/main_menu/detail_olahraga/views/detail_olahraga_view.dart';
import '../modules/main_menu/detail_tempat/bindings/detail_tempat_binding.dart';
import '../modules/main_menu/detail_tempat/views/detail_tempat_view.dart';
import '../modules/off_menu/login/bindings/login_binding.dart';
import '../modules/off_menu/login/views/login_view.dart';
import '../modules/off_menu/welcome_screen/bindings/welcome_screen_binding.dart';
import '../modules/off_menu/welcome_screen/views/welcome_screen_view.dart';
import '../modules/profile_menu/profile/bindings/profile_binding.dart';
import '../modules/profile_menu/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME_SCREEN,
      page: () => const WelcomeScreenView(),
      binding: WelcomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_OLAHRAGA,
      page: () => const DetailOlahragaView(),
      binding: DetailOlahragaBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_TEMPAT,
      page: () => const DetailTempatView(),
      binding: DetailTempatBinding(),
    ),
  ];
}

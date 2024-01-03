import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:sportzone/app/modules/history/views/history_view.dart';
import 'package:sportzone/app/modules/main_menu/dashboard/views/dashboard_view.dart';
import 'package:sportzone/app/modules/profile_menu/profile/views/profile_view.dart';
import 'package:sportzone/app/theme/theme.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    var pages = <Widget>[
      const DashboardView(),
      const HistoryView(),
      const ProfileView(),
    ];
    return Scaffold(
      body: Obx(
        () => pages[controller.currentIndex.value],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: light,
          boxShadow: [
            BoxShadow(
              color: grey1,
              blurRadius: 4,
              offset: const Offset(0, -1), // Shadow position
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(right: 2.w, left: 2.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              navBarItem(context, PhosphorIconsLight.house, 'Beranda', 0,
                  controller.cAniDashboard),
              navBarItem(context, PhosphorIconsLight.clockCounterClockwise,
                  'Riwayat', 1, controller.cAniHistory),
              navBarItem(context, PhosphorIconsLight.user, 'Profil', 2,
                  controller.cAniProfile),
            ],
          ),
        ),
      ),
    );
  }

  Widget navBarItem(BuildContext context, IconData icon, String text, int index,
      AnimationController animationController) {
    final controller = Get.put(HomeController());
    return GestureDetector(
        onTap: () {
          animationController.forward();
          Future.delayed(const Duration(milliseconds: 70), () {
            animationController.reverse();
          });
          Future.delayed(const Duration(milliseconds: 120)).then((value) {
            controller.changePage(index);
          });
        },
        onLongPressDown: (details) {
          animationController.forward();
        },
        onLongPressEnd: (details) async {
          await animationController.forward();
          await animationController.reverse();
          await Get.offAllNamed(Routes.HOME);
        },
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return ScaleTransition(
              scale: Tween(begin: 1.0, end: 0.90).animate(animationController),
              child: child,
            );
          },
          child: SizedBox(
            height: 81,
            child: Obx(
              () => Padding(
                padding: EdgeInsets.only(top: 1.4.h),
                child: SizedBox(
                  width: 20.w,
                  child: Column(
                    children: [
                      Icon(
                        icon,
                        size: 8.w,
                        color: (index == controller.currentIndex.value ||
                                Get.currentRoute == Routes.DASHBOARD)
                            ? black
                            : black.withOpacity(0.4),
                      ),
                      Text(
                        text,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontSize: 9.sp,
                              color: (index == controller.currentIndex.value ||
                                      Get.currentRoute == Routes.DASHBOARD)
                                  ? black
                                  : black.withOpacity(0.4),
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

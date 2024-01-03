import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:sportzone/app/theme/theme.dart';

import '../../../../utils/gradienttext.dart';
import '../../../../utils/textfield.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());

    // add scrollcontroller to listen scroll activity for appbar
    final ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.offset > (125 - kToolbarHeight) &&
          !controller.showTitle.value) {
        controller.showTitle.value = true;
      } else if (scrollController.offset <= (125 - kToolbarHeight) &&
          controller.showTitle.value) {
        controller.showTitle.value = false;
      }
    });

    return Scaffold(
      body: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            controller.resetAnimationOnScroll();
          }
          return false;
        },
        child: CustomScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          slivers: [
            Obx(
              () => SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
                pinned: true,
                snap: false,
                floating: false,
                expandedHeight: 16.h,
                centerTitle: false,
                title: controller.showTitle.value
                    ? Padding(
                        padding: EdgeInsets.only(
                          left: 2.5.w,
                          right: 2.5.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            formSearch(),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    PhosphorIconsLight.bellRinging,
                                    size: 8.w,
                                  ),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: ClipOval(
                                    child: Container(
                                      width: 8.w,
                                      height: 4.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: blue10_3250ED),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(),
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding:
                        EdgeInsets.only(left: 6.5.w, right: 6.5.w, top: 6.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            gradientWidget(
                              Theme.of(context).colorScheme.primary,
                              Theme.of(context).colorScheme.secondary,
                              Text(
                                'SportZone',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(fontSize: 20.sp),
                              ),
                            ),
                            SizedBox(
                              height: 1.5.h,
                            ),
                            formSearch(),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    PhosphorIconsLight.mapPin,
                                    size: 4.w,
                                  ),
                                  SizedBox(
                                    width: 0.4.w,
                                  ),
                                  Text(
                                    'Lokasi Anda',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                            fontSize: 10.sp,
                                            decoration:
                                                TextDecoration.underline),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    PhosphorIconsLight.bellRinging,
                                    size: 8.w,
                                  ),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: ClipOval(
                                    child: Container(
                                      width: 8.w,
                                      height: 4.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: blue10_3250ED),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 4.w),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 9,
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(bottom: 0.1.h),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 0.85,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 0),
                      itemBuilder: (context, index) {
                        // initiate animation and duration for animation each index
                        if (controller.cAniDashboardCategories[index] == null) {
                          controller.cAniDashboardCategories[index] =
                              AnimationController(
                            vsync: controller,
                            duration: const Duration(milliseconds: 70),
                          );
                          controller.isItemClicked[index] = false;
                        }
                        return AnimatedBuilder(
                          animation: controller.cAniDashboardCategories[index]!,
                          builder: (
                            context,
                            child,
                          ) {
                            return ScaleTransition(
                              scale: Tween(begin: 1.0, end: 0.95).animate(
                                  controller.cAniDashboardCategories[index]!),
                              child: child,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onLongPressDown: (details) {
                                controller.cAniDashboardCategories[index]!
                                    .forward();
                              },
                              onLongPressEnd: (details) async {
                                await controller.cAniDashboardCategories[index]!
                                    .reverse();
                              },
                              child: InkWell(
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                splashFactory: NoSplash.splashFactory,
                                onTap: () {
                                  controller.cAniDashboardCategories[index]!
                                      .forward();
                                  Future.delayed(
                                      const Duration(milliseconds: 70), () {
                                    controller.cAniDashboardCategories[index]!
                                        .reverse();
                                  });
                                },
                                child: Container(
                                    width: 2.w,
                                    height: 1.h,
                                    decoration: BoxDecoration(
                                      color: grey2,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                          child: Image.asset(
                                            'assets/images/futsal_img.png',
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 1.5.h,
                                              left: 3.w,
                                              right: 3.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Badminton',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium!
                                                        .copyWith(
                                                          fontSize: 11.sp,
                                                          height: 1,
                                                        ),
                                                  ),
                                                  Text(
                                                    '3 Destinasi',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .displayMedium!
                                                        .copyWith(
                                                          fontSize: 7.sp,
                                                          height: 1,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Lihat Tempat',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineSmall!
                                                          .copyWith(
                                                            fontSize: 5.sp,
                                                          ),
                                                    ),
                                                    Icon(
                                                      PhosphorIconsLight
                                                          .caretRight,
                                                      size: 2.w,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

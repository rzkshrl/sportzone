import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:sportzone/app/theme/theme.dart';

import '../../../../utils/gradienttext.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Scaffold(
      body: GestureDetector(
        child: CustomScrollView(
          controller: controller.scrollController.value,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: 25.h,
              centerTitle: false,
              title: Padding(
                padding: EdgeInsets.only(left: 2.w, right: 2.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (controller.isSliverAppBarExpanded)
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
                        ],
                      )
                    else
                      const SizedBox(),
                  ],
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 6.h),
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
                            height: 2.h,
                          ),
                          Form(
                            child: SizedBox(
                              height: 1.h,
                              child: TextFormField(
                                style: Theme.of(context).textTheme.displaySmall,
                                decoration: InputDecoration(
                                  hintText: 'Search notes',
                                  isDense: true,
                                  contentPadding: const EdgeInsets.all(0),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                      left: 1.w,
                                      right: 0.8.w,
                                    ),
                                    child: Align(
                                      widthFactor: 0.5,
                                      heightFactor: 0.5,
                                      child: Icon(
                                        PhosphorIconsLight.magnifyingGlass,
                                        size: 18,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Theme.of(context).cardColor,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28),
                                      borderSide: BorderSide.none),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

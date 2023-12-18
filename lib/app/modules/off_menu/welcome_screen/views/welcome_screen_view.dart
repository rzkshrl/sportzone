import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../../../routes/app_pages.dart';
import '../../../../theme/theme.dart';
import '../../../../utils/gradienttext.dart';
import '../controllers/welcome_screen_controller.dart';

class WelcomeScreenView extends GetView<WelcomeScreenController> {
  const WelcomeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/Welcome Screen.svg'),
            SizedBox(
              height: 6.h,
            ),
            gradientWidget(
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
              Text(
                'SportZone',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(fontSize: 35.sp),
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Text(
              'Olahraga dengan nyaman \npesan sekarang di SportZone',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 17.sp),
            ),
            SizedBox(
              height: 6.h,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                Get.offAllNamed(Routes.LOGIN);
              },
              child: Container(
                height: 5.h,
                width: 33.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Theme.of(context).colorScheme.primary,
                          Theme.of(context).colorScheme.secondary,
                        ])),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mulai',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontSize: 18.sp,
                              color: light,
                            ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Icon(
                        PhosphorIconsLight.arrowRight,
                        color: light,
                        size: 5.w,
                      )
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:sportzone/app/utils/gradienttext.dart';

import '../../../theme/theme.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onTap: () {},
              child: Container(
                height: 6.3.h,
                width: 35.w,
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
                            .headlineLarge!
                            .copyWith(fontSize: 16.sp, color: light),
                      ),
                      SizedBox(
                        width: 0.5.h,
                      ),
                      Icon(
                        PhosphorIconsThin.arrowRight,
                        color: light,
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

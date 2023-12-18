import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import 'package:sizer/sizer.dart';
import 'package:sportzone/app/utils/button.dart';
import '../../../../theme/theme.dart';
import '../../../../utils/gradienttext.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: blue12_CBE4FC,
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(color: blue12_CBE4FC),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.2.h),
                  child: SvgPicture.asset(
                    'assets/images/Login Screen.svg',
                    width: 100.w,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.5.h),
              child: Column(
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
                    height: 0.8.h,
                  ),
                  Text(
                    'Daftar dan nikmati layanan khusus untuk Anda',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 23.sp),
                  ),
                  SizedBox(
                    height: 0.8.h,
                  ),
                  SizedBox(
                    width: 84.w,
                    child: Text(
                      'Olahraga mudah dan nyaman di dekat Anda dan hanya untuk Anda',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 14.sp, height: 1.1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.2.h, right: 2.2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  btnLogin(
                      elevation: 0,
                      btnColor: blueFB,
                      icon: SvgPicture.asset('assets/images/fb_logo.svg'),
                      text: 'Daftar dengan Facebook',
                      textColor: light),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  btnLogin(
                      elevation: 3,
                      btnColor: light,
                      icon: SvgPicture.asset('assets/images/google_logo.svg'),
                      text: 'Daftar dengan Google',
                      textColor: black.withOpacity(0.54)),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  btnLogin(
                      elevation: 0,
                      btnColor: black,
                      icon: SvgPicture.asset('assets/images/apple_logo.svg'),
                      text: 'Daftar dengan Apple',
                      textColor: light),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
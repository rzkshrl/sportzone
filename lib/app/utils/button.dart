import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

Widget btnLogin({
  Function()? onTap,
  required double elevation,
  required Color btnColor,
  required Widget icon,
  required String text,
  required Color textColor,
}) {
  final context = Get.context!;
  return Material(
    elevation: elevation,
    color: btnColor,
    borderRadius: BorderRadius.circular(10),
    child: InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Container(
        height: 6.h,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(
                width: 3.w,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 12.sp,
                      color: textColor,
                    ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

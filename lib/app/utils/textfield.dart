import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:sizer/sizer.dart';

import '../theme/theme.dart';

Widget formSearch() {
  return Form(
    child: SizedBox(
      height: 4.h,
      width: 60.w,
      child: TextFormField(
        style: Theme.of(Get.context!)
            .textTheme
            .displaySmall!
            .copyWith(fontSize: 12.sp),
        decoration: InputDecoration(
          hintText: 'Apa yang anda cari?',
          hintStyle: Theme.of(Get.context!).textTheme.displaySmall!.copyWith(
                fontSize: 10.sp,
              ),
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
                size: 5.w,
                color: black,
              ),
            ),
          ),
          filled: true,
          fillColor: light,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: black, width: 0.5),
          ),
        ),
      ),
    ),
  );
}

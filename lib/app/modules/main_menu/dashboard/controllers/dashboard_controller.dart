// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DashboardController extends GetxController {
  var scrollController = ScrollController().obs;
  var titleFontSize = 0.sp;

  bool get isSliverAppBarExpanded {
    return scrollController.value.hasClients &&
        scrollController.value.offset > (220 - kToolbarHeight);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

// ignore_for_file: unnecessary_overrides
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController
    with GetTickerProviderStateMixin {
  var showTitle = false.obs;

  final Map<int, AnimationController> cAniDashboardCategories = {};
  final Map<int, bool> isItemClicked = {};

  void handleItemNotesAnimation(int index) {
    isItemClicked[index] = !isItemClicked[index]!;
    if (isItemClicked[index]!) {
      cAniDashboardCategories[index]!.forward(from: 0);
    } else {
      cAniDashboardCategories[index]!.reverse(from: 1);
    }
    update();
  }

  void resetAnimationOnScroll() {
    for (int index in cAniDashboardCategories.keys) {
      cAniDashboardCategories[index]!.reverse();
    }
    update();
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

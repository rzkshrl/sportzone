// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreenController extends GetxController
    with GetTickerProviderStateMixin {
  late final AnimationController cAniWelcomeBtn;
  bool isWelcomeBtnClicked = false;

  @override
  void onInit() {
    super.onInit();
    cAniWelcomeBtn = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 70),
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    cAniWelcomeBtn.reverse();
  }
}

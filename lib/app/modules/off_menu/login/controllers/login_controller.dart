// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with GetTickerProviderStateMixin {
  late final AnimationController cAniFBLogin;
  bool isFBLoginClicked = false;

  late final AnimationController cAniGoogleLogin;
  bool isFBGoogleClicked = false;

  late final AnimationController cAniAppleLogin;
  bool isFBAppleClicked = false;

  @override
  void onInit() {
    super.onInit();
    cAniFBLogin = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 70),
    );
    cAniGoogleLogin = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 70),
    );
    cAniAppleLogin = AnimationController(
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
  }
}

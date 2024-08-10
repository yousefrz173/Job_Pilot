import 'package:flutter/material.dart';
import 'package:jobpilot/presentation/splash_screen/binding/splash_binding.dart';
import 'package:jobpilot/presentation/splash_screen/splash_screen.dart';

import '../../../core/app_export.dart';
import '../models/logo_model.dart';

/// A controller class for the LogoScreen.

/// This class manages the state of the LogoScreen, including the
/// current logoMode10bj
class LogoController extends GetxController {
  Rx<LogoModel> logoModel0bj = LogoModel().obs;

  @override
  void onReady() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(
        () => SplashScreen(),
        binding: SplashBinding(),
        transition: Transition.fadeIn,
        duration: 1.seconds,
        curve: Curves.easeInOut,
      );
    });
    super.onReady();
  }
}

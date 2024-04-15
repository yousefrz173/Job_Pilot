import '../../../core/app_export.dart';
import '../models/settings_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SettingsScreen.

/// This class manages the state of the SettingsScreen, including the
/// current settingsModel0bj
class SettingsController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController logOutController = TextEditingController();

  Rx<SettingsModel> settingsModel0bj = SettingsModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    logOutController.dispose();
  }
}

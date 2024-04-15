import '../../../core/app_export.dart';
import '../models/update_password_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the UpdatePasswordScreen.

/// This class manages the state of the UpdatePasswordScreen, including the
/// current updatePasswordModel0bj
class UpdatePasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<UpdatePasswordModel> updatePasswordMode10bj = UpdatePasswordModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  Rx<bool> isShowPassword2 = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();

    newpasswordController.dispose();
    confirmpasswordController.dispose();
  }
}

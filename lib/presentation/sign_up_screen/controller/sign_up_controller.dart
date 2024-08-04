import '../../../core/app_export.dart';
import '../models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.

/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpModel> signUpModel0bj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberme = false.obs;

  late final role = Get.arguments['role'];

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}

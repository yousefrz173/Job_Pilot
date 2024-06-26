import '../../../core/app_export.dart';
import '../models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// A controller class for the LoginScreen.

/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelobj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberme = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}

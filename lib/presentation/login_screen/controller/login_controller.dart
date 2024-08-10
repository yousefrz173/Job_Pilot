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

  var role = UserRole.company.obs;

  @override
  onInit() {
    super.onInit();
  }

  void selectRole(UserRole userRole) {
    role.value = userRole;
    // update();
  }

  Future<String?> login() async {
    final String path = role == Rx(UserRole.company)
        ? AppConstants.COMPANY_PATH
        : role == Rx(UserRole.job_seeker)
            ? AppConstants.SEEKER_PATH
            : AppConstants.CUSTOMER_PATH;

    Map<String, dynamic> data = {
      'email': emailController.text,
      'password': passwordController.text,
    };
    try {
      var response = await HttpUtil().post(
        path: '$path${AppConstants.LOGIN_PATH}',
        data: data,
      );
      Get.snackbar(
        'title',
        response['message'],
      );
      if (response["statusNumber"] == 200) {
        Get.toNamed(AppRoutes.homeScreen);
      }
      return '';
    } catch (e) {
      Get.snackbar(
        'title',
        e.toString(),
      );
    }
  }

  @override
  void onClose() {
    super.onClose();
    emailController.clear();
    emailController.dispose();
    passwordController.clear();
    passwordController.dispose();
  }
}

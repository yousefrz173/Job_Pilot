import '../../../../core/my_app_export.dart';
import '../../../../data/models/userModels/user_models.dart';
import '../../../../data/sharedPreferences/user_preferences.dart';
import '../models/login_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginScreen.

/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelobj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberme = false.obs;

  var role = UserRole.NOUSER.obs;

  Rxn<User> currentUser = Rxn<User>();

  @override
  onInit() {
    super.onInit();
  }

  void selectRole(UserRole userRole) {
    role.value = userRole;
    UserPreferences.saveRole(
      role: role.toString(),
    );
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
        updateToken(response["${role.toString()} data"]["api"] ?? '');

        Get.toNamed(
          AppRoutes.homeScreen,
        );
      }
      return '';
    } catch (e) {
      Get.snackbar(
        'title',
        e.toString(),
      );
    }
    return null;
  }

  Future<void> updateToken(String? token) async {
    User? user = await UserPreferences.loadUser();
    user?.setToken(
      token: token,
    );
    UserPreferences.saveToken(
      token: token,
    );
    UserPreferences.saveUser(user!);
  }

  Future<void> updateUser(User newUser) async {
    // Update user data in the app
    currentUser.value = newUser;
    // Save updated user data to SharedPreferences
    await UserPreferences.saveUser(newUser);
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

import '../../../core/app_export.dart';
import '../models/forgot_password_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgotPasswordScreen.

/// This class manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordMode10bj
class ForgotPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgotPasswordModel> forgotPasswordModel0bj = ForgotPasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}

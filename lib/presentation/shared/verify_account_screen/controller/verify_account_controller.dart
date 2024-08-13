import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/data/models/userModels/user_models.dart';

import '../../../../core/my_app_export.dart';
import '../models/verify_account_model.dart';

/// A controller class for the CheckYourEmailScreen.

/// This class manages the state of the CheckYourEmailScreen, including the
/// current checkYourEmailModelObj
class VerifyAccountController extends GetxController {
  Rx<VerifyAccountModel> verifyAccountModelObj = VerifyAccountModel().obs;

  Rx<TextEditingController> verificationCodeController =
      TextEditingController().obs;

  var role;

  @override
  onInit() {
    super.onInit();
    _loadUserRole();
  }

  void _loadUserRole() async {
    role = await UserPreferences.loadRole();
    update();
  }

  Future<void> verify() async {
    var response;
    // FOR TESTING
    // var _token =
    //     "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL2NvbXBhbnkvbG9naW4iLCJpYXQiOjE3MjMzMjQ5ODEsImV4cCI6MTcyMzMyODU4MSwibmJmIjoxNzIzMzI0OTgxLCJqdGkiOiJDekhqdUplMktRekdqN1F0Iiwic3ViIjoiMjIiLCJwcnYiOiJjZmU3ZWM5OWEyM2Y0Mzg4ZTdmMWQ1ZmI4NzA4Mzc1Yzg1NGVkYTY0In0.0NVBIuI-VVhcdf8gWgQ7qCImcX4MYlk_hlMirVMPpfY";
    // await UserPreferences.saveUser(
    //   User(
    //     password: 'password',
    //     email: 'email',
    //     token: _token,
    //   ),
    // );
    // var user = await UserPreferences.loadUser();
    // // await UserPreferences.clearUserData();
    // print(user!.Token);
    print(role);
    Map<String, dynamic> data = {
      'verificationCode': verificationCodeController.value.text,
    };
    try {
      response = await HttpUtil().post(
        path: '/$role/verify',
        data: data,
      );
      if (response['statusNumber'] == 200) {
        verificationCodeController.value.clear();
        Get.snackbar(
          "Success!",
          response["message"],
        );
        Get.offNamed(AppRoutes.successfullyScreen);
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
      );
    }
  }

  @override
  void onClose() {
    dispose();
    super.onClose();
  }
}

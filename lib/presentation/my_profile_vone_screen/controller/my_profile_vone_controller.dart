import '../../../core/app_export.dart';
import '../models/my_profile_vone_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the MyProfileVoneScreen.

/// This class manages the state of the MyProfileVoneScreen, including the
/// current myProfileVoneModelObj
class MyProfileVoneController extends GetxController {
  TextEditingController editProfileController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  Rx<MyProfileVoneModel> myProfileVoneModelObj = MyProfileVoneModel().obs;

  Rx<String> gender = "".obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('1').obs;

  @override
  void onClose() {
    super.onClose();
    editProfileController.dispose();
    fullNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    locationController.dispose();
  }
}

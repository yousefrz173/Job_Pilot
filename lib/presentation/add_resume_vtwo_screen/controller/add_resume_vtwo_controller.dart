import '../../../core/app_export.dart';
import '../models/add_resume_vtwo_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddResumeVtwoScreen.

/// This class manages the state of the AddResumeVtwoScreen, including the
/// current addResumeVtwoMode1Obj
class AddResumeVtwoController extends GetxController {
  TextEditingController editProfileController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  Rx<AddResumeVtwoModel> addResumeVtwoModel0bj = AddResumeVtwoModel().obs;

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

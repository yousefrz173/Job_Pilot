import '../../../core/app_export.dart';
import '../models/add_education_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddEducationScreen.

/// This class manages the state of the AddEducationScreen, including the
/// current addEducationModel0bj
class AddEducationController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController group122Controller = TextEditingController();

  Rx<AddEducationModel> addEducationModel0bj = AddEducationModel().obs;

  Rx<bool> thisismypositionnow = false.obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    nameController.dispose();
    editText1Controller.dispose();
    group122Controller.dispose();
  }
}

import '../../../core/app_export.dart';
import '../models/change_education_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChangeEducationScreen.

/// This class manages the state of the ChangeEducationScreen, including the
/// current changeEducationModelObj
class ChangeEducationController extends GetxController {
  TextEditingController eightyNineController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController ninetyOneController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController ninetyFiveController = TextEditingController();

  Rx<ChangeEducationModel> changeEducationModel0bj = ChangeEducationModel().obs;

  Rx<bool> thisismypositionnow = false.obs;

  @override
  void onClose() {
    super.onClose();
    eightyNineController.dispose();
    nameController.dispose();
    ninetyOneController.dispose();
    dateController.dispose();
    ninetyFiveController.dispose();
  }
}

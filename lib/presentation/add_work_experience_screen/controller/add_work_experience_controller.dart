import '../../../core/app_export.dart';
import '../models/add_work_experience_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddWorkExperienceScreen.

/// This class manages the state of the AddWorkExperienceScreen, including the
/// current addWorkExperienceModel0bj
class AddWorkExperienceController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController eightySevenController = TextEditingController();

  Rx<AddWorkExperienceModel> addWorkExperienceMode10bj =
      AddWorkExperienceModel().obs;

  Rx<bool> thisismypositionnow = false.obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editText1Controller.dispose();
    eightySevenController.dispose();
  }
}

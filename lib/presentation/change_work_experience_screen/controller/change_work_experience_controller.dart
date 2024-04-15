import '../../../core/app_export.dart';
import '../models/change_work_experience_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChangeWorkExperienceScreen.

/// This class manages the state of the ChangeWorkExperienceScreen, including the
/// current changeWorkExperienceMode10bj
class ChangeWorkExperienceController extends GetxController {
  TextEditingController managerController = TextEditingController();

  TextEditingController amazonIncController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController group100Controller = TextEditingController();

  Rx<ChangeWorkExperienceModel> changeWorkExperienceMode10bj =
      ChangeWorkExperienceModel().obs;

  Rx<bool> thisismypositionnow = false.obs;

  @override
  void onClose() {
    super.onClose();
    managerController.dispose();
    amazonIncController.dispose();
    dateController.dispose();
    group100Controller.dispose();
  }
}

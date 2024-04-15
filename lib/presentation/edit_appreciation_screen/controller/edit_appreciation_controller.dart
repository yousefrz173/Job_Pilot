import '../../../core/app_export.dart';
import '../models/edit_appreciation_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditAppreciationScreen.

/// This class manages the state of the EditAppreciationScreen, including the
/// current editAppreciationModelObj
class EditAppreciationController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController youngScientistController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController group143Controller = TextEditingController();

  Rx<EditAppreciationModel> editAppreciationMode10bj =
      EditAppreciationModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    youngScientistController.dispose();
    dateController.dispose();
    group143Controller.dispose();
  }
}

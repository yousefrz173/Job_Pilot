import '../../../core/app_export.dart';
import '../models/add_appreciation_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddAppreciationScreen.

/// This class manages the state of the AddAppreciationScreen, including the
/// current addAppreciationModel0bj
class AddAppreciationController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController eightyEightController = TextEditingController();

  Rx<AddAppreciationModel> addAppreciationModel0bj = AddAppreciationModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    editTextController.dispose();
    dateController.dispose();
    eightyEightController.dispose();
  }
}

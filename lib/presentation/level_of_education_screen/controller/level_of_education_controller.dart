import '../../../core/app_export.dart';
import '../models/level_of_education_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LevelOfEducationScreen.

/// This class manages the state of the LevelOfEducationScreen, including the
/// current levelOfEducationModelObj
class LevelOfEducationController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<LevelOfEducationModel> levelOfEducationMode10bj =
      LevelOfEducationModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

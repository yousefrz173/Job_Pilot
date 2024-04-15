import '../../../core/app_export.dart';
import '../models/field_of_study_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FieldOfStudyScreen.

/// This class manages the state of the FieldOfStudyScreen, including the
/// current fieldOfStudyMode10bj
class FieldOfStudyController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<FieldOfStudyModel> fieldOfStudyModelObj = FieldOfStudyModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

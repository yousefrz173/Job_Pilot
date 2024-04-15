import '../../../core/app_export.dart';
import '../models/specialization_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SpecializationScreen.

/// This class manages the state of the SpecializationScreen, including the
/// current specializationModel0bj
class SpecializationController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SpecializationModel> specializationModelObj = SpecializationModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

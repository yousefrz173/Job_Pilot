import '../../../core/app_export.dart';
import '../models/filter_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FilterScreen.

/// This class manages the state of the FilterScreen, including the
/// current filterModelObj
class FilterController extends GetxController {
  TextEditingController designController = TextEditingController();

  TextEditingController uIUXDesignController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  Rx<FilterModel> filterModelObj = FilterModel().obs;

  @override
  void onClose() {
    super.onClose();
    designController.dispose();
    uIUXDesignController.dispose();
    locationController.dispose();
  }
}

import '../../../core/app_export.dart';
import '../models/start_date_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the StartDateScreen.

/// This class manages the state of the StartDateScreen, including the
/// current startDateMode10bj
class StartDateController extends GetxController {
  TextEditingController group146Controller = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController date1Controller = TextEditingController();

  Rx<StartDateModel> startDateModelObj = StartDateModel().obs;

  Rx<bool> thisismypositionnow = false.obs;

  @override
  void onClose() {
    super.onClose();
    group146Controller.dispose();
    dateController.dispose();
    date1Controller.dispose();
  }
}

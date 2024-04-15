import '../../../core/app_export.dart';
import '../models/about_me_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AboutMeScreen.

/// This class manages the state of the AboutMeScreen, including the
/// current aboutMeMode10bj
class AboutMeController extends GetxController {
  TextEditingController tellmeaboutyouController = TextEditingController();

  Rx<AboutMeModel> aboutMeMode10bj = AboutMeModel().obs;

  @override
  void onClose() {
    super.onClose();
    tellmeaboutyouController.dispose();
  }
}

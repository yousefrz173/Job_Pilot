import '../../../core/app_export.dart';
import '../models/upload_cv_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the UploadCvOneScreen.

/// This class manages the state of the UploadCvOneScreen, including the
/// current uploadCvOneMode10bj
class UploadCvOneController extends GetxController {
  TextEditingController fiftyTwoController = TextEditingController();

  Rx<UploadCvOneModel> uploadCvOneModel0bj = UploadCvOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    fiftyTwoController.dispose();
  }
}

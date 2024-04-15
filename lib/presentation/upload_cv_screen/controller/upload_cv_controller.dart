import '../../../core/app_export.dart';
import '../models/upload_cv_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the UploadCvScreen.

/// This class manages the state of the UploadCvScreen, including the
/// current uploadCvModelObj
class UploadCvController extends GetxController {
  TextEditingController fiftySixController = TextEditingController();

  Rx<UploadCvModel> uploadCvModel0bj = UploadCvModel().obs;

  @override
  void onClose() {
    super.onClose();
    fiftySixController.dispose();
  }
}

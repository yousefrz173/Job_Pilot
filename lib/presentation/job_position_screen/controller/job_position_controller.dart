import '../../../core/app_export.dart';
import '../models/job_position_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the JobPositionScreen.

/// This class manages the state of the JobPositionScreen, including the
/// current jobPositionModel0bj
class JobPositionController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<JobPositionModel> jobPositionModelObj = JobPositionModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

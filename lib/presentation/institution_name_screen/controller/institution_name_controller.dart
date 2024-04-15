import '../../../core/app_export.dart';
import '../models/institution_name_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the InstitutionNameScreen.

/// This class manages the state of the InstitutionNameScreen, including the
/// current institutionNameModelObj
class InstitutionNameController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<InstitutionNameModel> institutionNameModel0bj = InstitutionNameModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

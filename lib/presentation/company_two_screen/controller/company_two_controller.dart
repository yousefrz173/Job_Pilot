import '../../../core/app_export.dart';
import '../models/company_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CompanyTwoScreen.

/// This class manages the state of the CompanyTwoScreen, including the
/// current companyTwoMode10bj
class CompanyTwoController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<CompanyTwoModel> companyTwoModelObj = CompanyTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

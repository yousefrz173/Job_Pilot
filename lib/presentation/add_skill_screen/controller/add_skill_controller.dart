import '../../../core/app_export.dart';
import '../models/add_skill_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddSkillScreen.

/// This class manages the state of the AddSkillScreen, including the
/// current addSkillModelObj
class AddSkillController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<AddSkillModel> addSkillModelObj = AddSkillModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

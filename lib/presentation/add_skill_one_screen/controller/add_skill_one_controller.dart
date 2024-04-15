import '../../../core/app_export.dart';
import '../models/add_skill_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddSkillOneScreen.

/// This class manages the state of the AddSkillOneScreen, including the
/// current addSkillOneMode10bj
class AddSkillOneController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<AddSkillOneModel> addSkillOneModel0bj = AddSkillOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

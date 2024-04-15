import '../../../core/app_export.dart';
import '../models/description_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DescriptionOneScreen.

/// This class manages the state of the DescriptionOneScreen, including the
/// current descriptionOneModelObj
class DescriptionOneController extends GetxController {
  TextEditingController seniorDesignerController = TextEditingController();

  TextEditingController bachelorsDegreeController = TextEditingController();

  TextEditingController designController = TextEditingController();

  Rx<DescriptionOneModel> descriptionOneModelObj = DescriptionOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    seniorDesignerController.dispose();
    bachelorsDegreeController.dispose();
    designController.dispose();
  }
}

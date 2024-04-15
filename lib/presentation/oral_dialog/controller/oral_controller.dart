import '../../../core/app_export.dart';
import '../models/oral_model.dart';

/// A controller class for the OralDialog.

/// This class manages the state of the OralDialog, including the
/// current oralModel0bj
class OralController extends GetxController {
  Rx<OralModel> oralModelObj = OralModel().obs;

  Rx<String> radioGroup = "".obs;
}

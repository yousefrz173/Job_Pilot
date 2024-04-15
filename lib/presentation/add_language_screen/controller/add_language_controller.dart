import '../../../core/app_export.dart';
import '../models/add_language_model.dart';

/// A controller class for the AddLanguageScreen.

/// This class manages the state of the AddLanguageScreen, including the
/// current addLanguageMode10bj
class AddLanguageController extends GetxController {
  Rx<AddLanguageModel> addLanguageMode10bj = AddLanguageModel().obs;

  Rx<String> radioGroup = "".obs;
}

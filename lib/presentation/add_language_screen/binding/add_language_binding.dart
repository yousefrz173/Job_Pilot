import 'package:jobpilot/presentation/add_language_screen/controller/add_language_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddLanguageScreen.

/// This class ensures that the AddLanguageController is created when the
/// AddLanguageScreen is first loaded.
class AddLanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddLanguageController());
  }
}

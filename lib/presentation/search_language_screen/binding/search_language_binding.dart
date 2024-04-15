import 'package:jobpilot/presentation/search_language_screen/controller/search_language_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchLanguageScreen.

/// This class ensures that the SearchLanguageController is created when the
/// SearchLanguageScreen is first loaded.
class SearchLanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchLanguageController());
  }
}

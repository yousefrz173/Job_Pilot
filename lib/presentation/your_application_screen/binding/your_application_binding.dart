import 'package:jobpilot/presentation/your_application_screen/controller/your_application_controller.dart';
import 'package:get/get.dart';

/// A binding class for the YourApplicationScreen.

/// This class ensures that the YourApplicationController is created when the
/// YourApplicationScreen is first loaded.
class YourApplicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YourApplicationController());
  }
}

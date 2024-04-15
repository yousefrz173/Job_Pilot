import 'package:jobpilot/presentation/start_date_screen/controller/start_date_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StartDateScreen.

/// This class ensures that the StartDateController is created when the
/// StartDateScreen is first loaded.
class StartDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartDateController());
  }
}

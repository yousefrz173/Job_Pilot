import 'package:jobpilot/presentation/no_savings_screen/controller/no_savings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NoSavingsScreen.

/// This class ensures that the NoSavingsController is created when the
/// NoSavingsScreen is first loaded.
class NoSavingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoSavingsController());
  }
}

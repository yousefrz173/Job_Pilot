import 'package:jobpilot/presentation/no_results_found_screen/controller/no_results_found_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NoResultsFoundScreen.

/// This class ensures that the NoResultsFoundController is created when the
/// NoResultsFoundScreen is first loaded.
class NoResultsFoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoResultsFoundController());
  }
}

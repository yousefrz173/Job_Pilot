import 'package:jobpilot/presentation/edit_appreciation_screen/controller/edit_appreciation_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditAppreciationScreen.

/// This class ensures that the EditAppreciationController is created when the
/// EditAppreciationScreen is first loaded.
class EditAppreciationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditAppreciationController());
  }
}

import 'package:jobpilot/presentation/add_appreciation_screen/controller/add_appreciation_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddAppreciationScreen.

/// This class ensures that the AddAppreciationController is created when the
/// AddAppreciationScreen is first loaded.
class AddAppreciationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddAppreciationController());
  }
}

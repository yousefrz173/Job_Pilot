import 'package:jobpilot/presentation/change_education_screen/controller/change_education_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangeEducationScreen.

/// This class ensures that the ChangeEducationController is created when the
/// ChangeEducationScreen is first loaded.
class ChangeEducationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangeEducationController());
  }
}

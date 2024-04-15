import 'package:jobpilot/presentation/add_education_screen/controller/add_education_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddEducationScreen.

/// This class ensures that the AddEducationController is created when the
/// AddEducationScreen is first loaded.
class AddEducationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddEducationController());
  }
}

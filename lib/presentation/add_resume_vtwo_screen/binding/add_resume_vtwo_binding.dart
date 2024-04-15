import 'package:jobpilot/presentation/add_resume_vtwo_screen/controller/add_resume_vtwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddResumeVtwoScreen.

/// This class ensures that the AddResumeVtwoController is created when the
/// AddResumeVtwoScreen is first loaded.
class AddResumeVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddResumeVtwoController());
  }
}

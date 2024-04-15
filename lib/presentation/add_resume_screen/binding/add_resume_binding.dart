import 'package:jobpilot/presentation/add_resume_screen/controller/add_resume_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddResumeScreen.

/// This class ensures that the AddResumeController is created when the
/// AddResumeScreen is first loaded.
class AddResumeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddResumeController());
  }
}

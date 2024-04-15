import 'package:jobpilot/presentation/change_work_experience_screen/controller/change_work_experience_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangeWorkExperienceScreen.

/// This class ensures that the ChangeWorkExperienceController is created when the
/// ChangeWorkExperienceScreen is first loaded.
class ChangeWorkExperienceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangeWorkExperienceController());
  }
}

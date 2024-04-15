import '../controller/add_work_experience_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddWorkExperienceScreen.

/// This class ensures that the AddWorkExperienceController is created when the
/// AddWorkExperienceScreen is first loaded.
class AddWorkExperienceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddWorkExperienceController());
  }
}

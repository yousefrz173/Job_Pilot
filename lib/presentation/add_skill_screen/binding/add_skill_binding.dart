import 'package:jobpilot/presentation/add_skill_screen/controller/add_skill_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddSkillScreen.

/// This class ensures that the AddSkillController is created when the
/// AddSkillScreen is first loaded.
class AddSkillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddSkillController());
  }
}

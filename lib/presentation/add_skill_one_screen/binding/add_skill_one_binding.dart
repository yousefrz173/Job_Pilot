import 'package:jobpilot/presentation/add_skill_one_screen/controller/add_skill_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddSkillOneScreen.

/// This class ensures that the AddSkillOneController is created when the
/// AddSkillOneScreen is first loaded.
class AddSkillOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddSkillOneController());
  }
}

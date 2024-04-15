import 'package:jobpilot/presentation/skill_8_screen/controller/skill_8_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Skil18Screen.

/// This class ensures that the Skil18Controller is created when the
/// Skil18Screen is first loaded.
class Skil18Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Skill8Controller());
  }
}

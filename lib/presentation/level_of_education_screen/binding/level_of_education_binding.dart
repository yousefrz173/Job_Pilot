import 'package:jobpilot/presentation/level_of_education_screen/controller/level_of_education_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LevelOfEducationScreen.

/// This class ensures that the LevelOfEducationController is created when the
/// LevelOfEducationScreen is first loaded.
class LevelOfEducationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LevelOfEducationController());
  }
}

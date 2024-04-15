import 'package:jobpilot/presentation/field_of_study_screen/controller/field_of_study_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FieldOfStudyScreen.

/// This class ensures that the FieldOfStudyController is created when the
/// FieldOfStudyScreen is first loaded.
class FieldOfStudyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FieldOfStudyController());
  }
}

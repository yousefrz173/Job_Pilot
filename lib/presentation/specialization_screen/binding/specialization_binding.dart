import 'package:jobpilot/presentation/specialization_screen/controller/specialization_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SpecializationScreen.

/// This class ensures that the SpecializationController is created when the
/// SpecializationScreen is first loaded.
class SpecializationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpecializationController());
  }
}

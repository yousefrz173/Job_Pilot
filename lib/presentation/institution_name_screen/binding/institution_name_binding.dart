import 'package:jobpilot/presentation/institution_name_screen/controller/institution_name_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InstitutionNameScreen.

/// This class ensures that the InstitutionNameController is created when the
/// InstitutionNameScreen is first loaded.
class InstitutionNameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InstitutionNameController());
  }
}

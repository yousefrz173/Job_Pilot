import 'package:jobpilot/presentation/edit_add_a_job_screen/controller/edit_add_a_job_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditAddAJobScreen.

/// This class ensures that the EditAddAJobController is created when the
/// EditAddAJobScreen is first loaded.
class EditAddAJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditAddAJobController());
  }
}

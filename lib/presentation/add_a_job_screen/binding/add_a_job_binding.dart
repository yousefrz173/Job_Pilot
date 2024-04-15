import 'package:jobpilot/presentation/add_a_job_screen/controller/add_a_job_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddAJobScreen.

/// This class ensures that the AddAJobController is created when the
/// AddAJobScreen is first loaded.
class AddAJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddAJobController());
  }
}

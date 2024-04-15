import 'package:jobpilot/presentation/shared_a_job_screen/controller/shared_a_job_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SharedAJobScreen.

/// This class ensures that the SharedAJobController is created when the
//SharedAJobScreen is first loaded.
class SharedAJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SharedAJobController());
  }
}

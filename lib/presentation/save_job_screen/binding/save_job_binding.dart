import 'package:jobpilot/presentation/save_job_screen/controller/save_job_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SaveJobScreen.

/// This class ensures that the SaveJobController is created when the
/// SaveJobScreen is first loaded.
class SaveJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SaveJobController());
  }
}

import 'package:jobpilot/presentation/job_position_screen/controller/job_position_controller.dart';
import 'package:get/get.dart';

/// A binding class for the JobPositionScreen.

/// This class ensures that the JobPositionController is created when the
/// JobPositionScreen is first loaded.
class JobPositionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobPositionController());
  }
}

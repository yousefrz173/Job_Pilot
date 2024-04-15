import 'package:jobpilot/presentation/upload_resume_screen/controller/upload_resume_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UploadResumeScreen.

/// This class ensures that the UploadResumeController is created when the
/// UploadResumeScreen is first loaded.
class UploadResumeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadResumeController());
  }
}

import 'package:jobpilot/presentation/upload_cv_screen/controller/upload_cv_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UploadCvScreen.

/// This class ensures that the UploadCvController is created when the
/// UploadCvScreen is first loaded.
class UploadCvBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadCvController());
  }
}

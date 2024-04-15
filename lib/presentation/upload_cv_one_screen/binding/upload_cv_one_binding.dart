import 'package:jobpilot/presentation/upload_cv_one_screen/controller/upload_cv_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UploadCvOneScreen.

/// This class ensures that the UploadCvOneController is created when the
/// UploadCvOneScreen is first loaded.
class UploadCvOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadCvOneController());
  }
}

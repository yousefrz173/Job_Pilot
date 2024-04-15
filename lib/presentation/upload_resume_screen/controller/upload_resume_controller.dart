import '../../../core/app_export.dart';
import '../models/upload_resume_model.dart';

/// A controller class for the UploadResumeScreen.

/// This class manages the state of the UploadResumeScreen, including the
/// current uploadResumeMode1Obj
class UploadResumeController extends GetxController {
  Rx<UploadResumeModel> uploadResumeModelObj = UploadResumeModel().obs;
}

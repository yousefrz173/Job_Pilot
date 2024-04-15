import '../../../core/app_export.dart';
import '../models/save_job_model.dart';

/// A controller class for the SaveJobScreen.

/// This class manages the state of the SaveJobScreen, including the
/// current saveJobMode10bj
class SaveJobController extends GetxController {
  Rx<SaveJobModel> saveJobModelObj = SaveJobModel().obs;
}

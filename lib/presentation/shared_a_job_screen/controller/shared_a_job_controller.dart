import '../../../core/app_export.dart';
import '../models/shared_a_job_model.dart';

/// A controller class for the SharedAJobScreen.

/// This class manages the state of the SharedAJobScreen, including the
/// current sharedAJobModel0bj
class SharedAJobController extends GetxController {
  Rx<SharedAJobModel> sharedAJobModelobj = SharedAJobModel().obs;
}

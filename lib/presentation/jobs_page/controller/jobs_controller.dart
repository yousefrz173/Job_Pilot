import '../../../core/app_export.dart';
import '../models/jobs_model.dart';

/// A controller class for the JobsPage.

/// This class manages the state of the JobsPage, including the
/// current jobsMode10bj
class JobsController extends GetxController {
  JobsController(this.jobsModelObj);

  Rx<JobsModel> jobsModelObj;
}

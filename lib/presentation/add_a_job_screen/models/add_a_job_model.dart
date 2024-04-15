import '../../../core/app_export.dart';
import 'addajob_item_model.dart';

/// This class defines the variables used in the [add_a_job_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddAJobModel {
  Rx<List<AddajobItemModel>> addajobItemList = Rx([
    AddajobItemModel(
        jobPosition: "Job position*".obs, close: ImageConstant.imgClose1.obs),
    AddajobItemModel(
        jobPosition: "Job location".obs, close: ImageConstant.imgClose1.obs),
    AddajobItemModel(
        jobPosition: "Company".obs, close: ImageConstant.imgClose1.obs),
    AddajobItemModel(
        jobPosition: "Employment type".obs, close: ImageConstant.imgClose1.obs),
    AddajobItemModel(
        jobPosition: "Description".obs, close: ImageConstant.imgClose1.obs)
  ]);
}

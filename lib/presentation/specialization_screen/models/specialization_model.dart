import '../../../core/app_export.dart';
import 'specialization_item_model.dart';

/// This class defines the variables used in the [specialization_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SpecializationModel {
  Rx<List<SpecializationItemModel>> specializationItemList = Rx([
    SpecializationItemModel(
        thumbsUp: ImageConstant.imgThumbsUpOrange400.obs,
        design: "Design".obs,
        jobsCounter: "140 Jobs".obs),
    SpecializationItemModel(
        thumbsUp: ImageConstant.imgThumbsUpOrange40067x67.obs,
        design: "Finance".obs,
        jobsCounter: "250 Jobs".obs),
    SpecializationItemModel(
        thumbsUp: ImageConstant.imgThumbsUp67x67.obs,
        design: "Education".obs,
        jobsCounter: "120 Jobs".obs),
    SpecializationItemModel(
        thumbsUp: ImageConstant.imgUserOrange400.obs,
        design: "Restaurant".obs,
        jobsCounter: "85 Jobs".obs),
    SpecializationItemModel(
        thumbsUp: ImageConstant.imgCloseOrange400.obs,
        design: "Health".obs,
        jobsCounter: "235 Jobs".obs),
    SpecializationItemModel(
        thumbsUp: ImageConstant.imgCloseOrange40067x67.obs,
        design: "Programmer".obs,
        jobsCounter: "412 Jobs".obs)
  ]);
}

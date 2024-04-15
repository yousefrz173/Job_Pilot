import '../../../core/app_export.dart';
import 'savejob_item_model.dart';

/// This class defines the variables used in the [save_job_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SaveJobModel {
  Rx<List<SavejobItemModel>> savejobItemList = Rx([
    SavejobItemModel(
        logoGoogle: ImageConstant.imgGoogle220x15.obs,
        uIUXDesigner: "UI/UX Designer".obs,
        googleInc: "Google inc".obs,
        californiaUSA: "California, USA".obs,
        design: "Design".obs,
        fullTime: "Full time".obs,
        seniorDesigner: "Senior designer".obs,
        duration: "25 minute ago".obs),
    SavejobItemModel(
        logoGoogle: ImageConstant.imgDribbbleLogo.obs,
        uIUXDesigner: "Lead Designer".obs,
        googleInc: "Dribbble inc".obs,
        californiaUSA: "California, USA".obs,
        design: "Design".obs,
        fullTime: "Full time".obs,
        seniorDesigner: "Senior designer".obs,
        duration: "25 minute ago".obs),
    SavejobItemModel(
        logoGoogle: ImageConstant.imgTwitterLogo.obs,
        uIUXDesigner: "UX Researcher".obs,
        googleInc: "Twitter inc".obs,
        californiaUSA: "California, USA".obs,
        design: "Design".obs,
        fullTime: "Full time".obs,
        seniorDesigner: "Senior designer".obs,
        duration: "25 minute ago".obs)
  ]);
}

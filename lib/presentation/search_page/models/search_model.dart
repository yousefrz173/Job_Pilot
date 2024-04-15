import '../../../core/app_export.dart';
import 'search_item_model.dart';

/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<SearchItemModel>> searchItemList = Rx([
    SearchItemModel(
        logoGoogle: ImageConstant.imgGoogle220x15.obs,
        uIUXDesigner: "UI/UX Designer".obs,
        googleInc: "Google inc".obs,
        californiaUSA: "California, USA".obs,
        design: "Design".obs,
        fullTime: "Full time".obs,
        seniorDesigner: "Senior designer".obs,
        duration: "25 minute ago".obs),
    SearchItemModel(
        logoGoogle: ImageConstant.imgDribbbleLogo.obs,
        uIUXDesigner: "Lead Designer".obs,
        googleInc: "Dribbble inc".obs,
        californiaUSA: "California, USA".obs,
        design: "Design".obs,
        fullTime: "Full time".obs,
        seniorDesigner: "Senior designer".obs,
        duration: "25 minute ago".obs)
  ]);
}

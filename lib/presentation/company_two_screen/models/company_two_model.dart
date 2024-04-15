import '../../../core/app_export.dart';
import 'companytwo_item_model.dart';

/// This class defines the variables used in the [company_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CompanyTwoModel {
  Rx<List<CompanytwoItemModel>> companytwoItemList = Rx([
    CompanytwoItemModel(
        google: ImageConstant.imgGoogle220x15.obs,
        google1: "Google".obs,
        company: "Company".obs,
        internet: "Internet".obs),
    CompanytwoItemModel(
        google: ImageConstant.imgLogoApple.obs,
        google1: "Apple".obs,
        company: "Company".obs,
        internet: "Electronic goods".obs),
    CompanytwoItemModel(
        google: ImageConstant.imgSettingsOnprimarycontainer.obs,
        google1: "Amazon".obs,
        company: "Company".obs,
        internet: "Internet".obs),
    CompanytwoItemModel(
        google: ImageConstant.imgFacebook.obs,
        google1: "Facebook".obs,
        company: "Company".obs,
        internet: "Internet".obs),
    CompanytwoItemModel(
        google: ImageConstant.imgMicrosoft1.obs,
        google1: "Microsoft".obs,
        company: "Company".obs,
        internet: "Computer software".obs),
    CompanytwoItemModel(
        google: ImageConstant.imgAllianz.obs,
        google1: "Allianz".obs,
        company: "Company".obs,
        internet: "Financial services".obs),
    CompanytwoItemModel(
        google1: "Dribbble".obs,
        company: "Company".obs,
        internet: "Design".obs),
    CompanytwoItemModel(
        google1: "Twitter".obs,
        company: "Company".obs,
        internet: "Internet".obs),
    CompanytwoItemModel(
        google1: "Adobe".obs,
        company: "Company".obs,
        internet: "Computer software".obs),
    CompanytwoItemModel(
        google1: "AXA".obs, company: "Company".obs, internet: "Insurance".obs)
  ]);
}

import '../../../core/app_export.dart';
import 'searchlanguage_item_model.dart';

/// This class defines the variables used in the [search_language_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchLanguageModel {
  Rx<List<SearchlanguageItemModel>> searchlanguageItemList = Rx([
    SearchlanguageItemModel(
        arabic: ImageConstant.imgRectangle430x30.obs, arabic1: "Arabic".obs),
    SearchlanguageItemModel(
        arabic: ImageConstant.imgRectangle4.obs, arabic1: "Indonesian".obs),
    SearchlanguageItemModel(
        arabic: ImageConstant.imgRectangle41.obs, arabic1: "Malaysian".obs),
    SearchlanguageItemModel(
        arabic: ImageConstant.imgRectangle42.obs, arabic1: "French".obs),
    SearchlanguageItemModel(
        arabic: ImageConstant.imgRectangle43.obs, arabic1: "German".obs),
    SearchlanguageItemModel(
        arabic: ImageConstant.imgRectangle44.obs, arabic1: "Hindi".obs),
    SearchlanguageItemModel(
        arabic: ImageConstant.imgRectangle45.obs, arabic1: "Italian".obs),
    SearchlanguageItemModel(
        arabic: ImageConstant.imgRectangle46.obs, arabic1: "Japanese".obs)
  ]);
}

import '../../../core/app_export.dart';

/// This class is used in the [searchlanguage_item_widget] screen.
class SearchlanguageItemModel {
  SearchlanguageItemModel({
    this.arabic,
    this.arabic1,
    this.id,
  }) {
    arabic = arabic ?? Rx(ImageConstant.imgRectangle430x30);
    arabic1 = arabic1 ?? Rx("Arabic");
    id = id ?? Rx("");
  }
  Rx<String>? arabic;

  Rx<String>? arabic1;

  Rx<String>? id;
}

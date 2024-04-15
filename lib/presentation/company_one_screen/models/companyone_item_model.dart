import '../../../core/app_export.dart';

/// This class is used in the [companyone_item_widget] screen.
class CompanyoneItemModel {
  CompanyoneItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgImage3);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? id;
}

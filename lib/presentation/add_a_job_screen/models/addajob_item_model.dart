import '../../../core/app_export.dart';

/// This class is used in the [addajob_item_widget] screen.
class AddajobItemModel {
  AddajobItemModel({
    this.jobPosition,
    this.close,
    this.id,
  }) {
    jobPosition = jobPosition ?? Rx("Job position*");
    close = close ?? Rx(ImageConstant.imgClose1);
    id = id ?? Rx("");
  }

  Rx<String>? jobPosition;

  Rx<String>? close;

  Rx<String>? id;
}

import '../../../core/app_export.dart';

/// This class is used in the [specialization_item_widget] screen.
class SpecializationItemModel {
  SpecializationItemModel({
    this.thumbsUp,
    this.design,
    this.jobsCounter,
    this.id,
  }) {
    thumbsUp = thumbsUp ?? Rx(ImageConstant.imgThumbsUpOrange400);
    design = design ?? Rx("Design");
    jobsCounter = jobsCounter ?? Rx("140 Jobs");
    id = id ?? Rx("");
  }
  Rx<String>? thumbsUp;

  Rx<String>? design;

  Rx<String>? jobsCounter;

  Rx<String>? id;
}

import '../../../core/app_export.dart';

/// This class is used in the [editaddajob_item_widget] screen.
class EditaddajobItemModel {
  EditaddajobItemModel({
    this.jobPosition,
    this.administrativeAssistant,
    this.id,
  }) {
    jobPosition = jobPosition ?? Rx("Job position*");
    administrativeAssistant =
        administrativeAssistant ?? Rx("Administrative Assistant");
    id = id ?? Rx("");
  }
  Rx<String>? jobPosition;

  Rx<String>? administrativeAssistant;

  Rx<String>? id;
}

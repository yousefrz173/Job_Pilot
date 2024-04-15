import '../../../core/app_export.dart';

/// This class is used in the [savejob_item_widget] screen.
class SavejobItemModel {
  SavejobItemModel({
    this.logoGoogle,
    this.uIUXDesigner,
    this.googleInc,
    this.californiaUSA,
    this.design,
    this.fullTime,
    this.seniorDesigner,
    this.duration,
    this.id,
  }) {
    logoGoogle = logoGoogle ?? Rx(ImageConstant.imgGoogle220x15);
    uIUXDesigner = uIUXDesigner ?? Rx("UI/UX Designer");
    googleInc = googleInc ?? Rx("Google inc");
    californiaUSA = californiaUSA ?? Rx("California, USA");
    design = design ?? Rx("Design");
    fullTime = fullTime ?? Rx("Full time");
    seniorDesigner = seniorDesigner ?? Rx("Senior designer");
    duration = duration ?? Rx("25 minute ago");
    id = id ?? Rx("");
  }
  Rx<String>? logoGoogle;
  Rx<String>? uIUXDesigner;

  Rx<String>? googleInc;

  Rx<String>? californiaUSA;

  Rx<String>? design;

  Rx<String>? fullTime;

  Rx<String>? seniorDesigner;

  Rx<String>? duration;

  Rx<String>? id;
}

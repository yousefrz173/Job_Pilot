import '../../../core/app_export.dart';

/// This class is used in the [jobs_item_widget] screen.
class JobsItemModel {
  JobsItemModel({
    this.uIUXDesigner,
    this.googleInc,
    this.californiaUSA,
    this.design,
    this.fullTime,
    this.seniorDesigner,
    this.duration,
    this.id,
  }) {
    uIUXDesigner = uIUXDesigner ?? Rx("UI/UX Designer");
    googleInc = googleInc ?? Rx("Google inc");
    californiaUSA = californiaUSA ?? Rx("California, USA");
    design = design ?? Rx("Design");
    fullTime = fullTime ?? Rx("Full time");
    seniorDesigner = seniorDesigner ?? Rx("Senior designer");
    duration = duration ?? Rx("25 minute ago");
    id = id ?? Rx("");
  }
  Rx<String>? uIUXDesigner;

  Rx<String>? googleInc;
  Rx<String>? californiaUSA;

  Rx<String>? design;

  Rx<String>? fullTime;

  Rx<String>? seniorDesigner;

  Rx<String>? duration;

  Rx<String>? id;
}

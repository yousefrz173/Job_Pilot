import '../../../core/app_export.dart';

/// This class is used in the [companytwo_item_widget] screen.
class CompanytwoItemModel {
  CompanytwoItemModel({
    this.google,
    this.google1,
    this.company,
    this.internet,
    this.id,
  }) {
    google = google ?? Rx(ImageConstant.imgGoogle220x15);
    google1 = google1 ?? Rx("Google");
    company = company ?? Rx("Company");
    internet = internet ?? Rx("Internet");
    id = id ?? Rx("");
  }

  Rx<String>? google;

  Rx<String>? google1;

  Rx<String>? company;

  Rx<String>? internet;

  Rx<String>? id;
}

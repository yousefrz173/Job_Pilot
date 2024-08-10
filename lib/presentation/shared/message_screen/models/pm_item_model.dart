import '../../../../core/my_app_export.dart';

/// This class is used in the [pm_item_widget] screen.
class PmItemModel {
  PmItemModel({
    this.pm,
    this.meganRapinoe,
    this.iSawTheUIUX,
    this.time,
    this.id,
  }) {
    pm = pm ?? Rx(ImageConstant.imgEllipse482);
    meganRapinoe = meganRapinoe ?? Rx("Megan Rapinoe");
    iSawTheUIUX = iSawTheUIUX ?? Rx("I saw the UI/UX Designer vac ... ");
    time = time ?? Rx("01:00 pm");
    id = id ?? Rx("");
  }
  Rx<String>? pm;

  Rx<String>? meganRapinoe;

  Rx<String>? iSawTheUIUX;

  Rx<String>? time;

  Rx<String>? id;
}

import '../../../core/app_export.dart';

/// This class is used in the [language_item_widget] screen.
class LanguageItemModel {
  LanguageItemModel({
    this.circleImage,
    this.indonesianFirst,
    this.oralLevelTen,
    this.writtenLevel,
    this.id,
  }) {
    circleImage = circleImage ?? Rx(ImageConstant.imgRectangle4);
    indonesianFirst = indonesianFirst ?? Rx("Indonesian(First language)");
    oralLevelTen = oralLevelTen ?? Rx("Oral : Level 10");
    writtenLevel = writtenLevel ?? Rx("Written : Level 10");
    id = id ?? Rx("");
  }

  Rx<String>? circleImage;

  Rx<String>? indonesianFirst;

  Rx<String>? oralLevelTen;

  Rx<String>? writtenLevel;

  Rx<String>? id;
}

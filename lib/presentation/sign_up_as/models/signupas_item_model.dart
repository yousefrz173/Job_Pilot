import '../../../core/app_export.dart';

/// This class is used in the [signupas_item_widget] screen.
class SignUpAsItemModel {
  SignUpAsItemModel({
    this.jobPosition,
    this.close,
    this.id,
  }) {
    jobPosition = jobPosition ?? Rx("Job position*");
    close = close ?? Rx(ImageConstant.imgAirbusLogo);
    id = id ?? Rx(0);
  }

  Rx<String>? jobPosition;

  Rx<String>? close;

  Rx<int>? id;
}

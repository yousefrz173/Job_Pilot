import '../../../../core/my_app_export.dart';

/// This class is used in the [signupas_item_widget] screen.
class SignUpAsItemModel {
  SignUpAsItemModel({
    this.jobPosition,
    this.close,
    this.id,
  }) {
    jobPosition = jobPosition ?? Rx(UserRole.NOUSER);
    close = close ?? Rx(ImageConstant.imgAirbusLogo);
    id = id ?? Rx(0);
  }

  Rx<UserRole>? jobPosition;

  Rx<String>? close;

  Rx<int>? id;
}

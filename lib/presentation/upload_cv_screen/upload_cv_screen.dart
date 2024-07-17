import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import 'controller/upload_cv_controller.dart';

// ignore_for_file: must_be_immutable
class UploadCvScreen extends GetWidget<UploadCvController> {
  const UploadCvScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFortySeven(),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_upload_cv".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "msg_add_your_cv_resume".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 19.v),
                _buildUploadCVResume(),
                SizedBox(height: 29.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_information".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: CustomTextFormField(
                    controller: controller.fiftySixController,
                    hintText: "msg_explain_why_you".tr,
                    hintStyle: CustomTextStyles.bodySmallBluegray30003,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    maxLines: 12,
                    contentPadding: EdgeInsets.all(20.h),
                    borderDecoration:
                        TextFormFieldStyleHelper.outlineIndigoDTL20,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildApplyNow(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90002,
        margin: EdgeInsets.only(
          left: 23.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotificationGray90002,
          margin: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFortySeven() {
    return SizedBox(
      height: 177.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 29.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.fillGray10001,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 16.v),
                  Text(
                    "lbl_ui_ux_designer".tr,
                    style: CustomTextStyles.titleMediumGray90002,
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "lbl_google".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                        Container(
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.only(
                            left: 22.h,
                            top: 9.v,
                            bottom: 6.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray90002,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 50,
                        ),
                        Text(
                          "lbl_california".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                        Spacer(
                          flex: 50,
                        ),
                        Container(
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.only(
                            top: 9.v,
                            bottom: 6.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray90002,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "lbl_1_day_ago".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 84.adaptSize,
              width: 84.adaptSize,
              padding: EdgeInsets.all(14.h),
              decoration: AppDecoration.fillLightBlue.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder41,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgGoogle220x15,
                height: 54.adaptSize,
                width: 54.adaptSize,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUploadCVResume() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        decoration: AppDecoration.outlineBluegray30001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: DottedBorder(
          color: appTheme.blueGray30001,
          padding: EdgeInsets.only(
            left: 1.h,
            top: 1.v,
            right: 1.h,
            bottom: 1.v,
          ),
          strokeWidth: 1.h,
          radius: Radius.circular(15),
          borderType: BorderType.RRect,
          dashPattern: [
            3,
            3,
          ],
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 93.h,
              vertical: 24.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTwitter,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 5.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "msg_upload_cv_resume".tr,
                    style: CustomTextStyles.bodySmal10penSansGray90004,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyNow() {
    return CustomElevatedButton(
      text: "lbl_apply_now".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 29.h,
        right: 29.h,
        bottom: 36.v,
      ),
    );
  }
}

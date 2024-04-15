import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/upload_cv_one_controller.dart';

// ignore_for_file: must_be_immutable
class UploadCvOneScreen extends GetWidget<UploadCvOneController> {
  const UploadCvOneScreen({Key? key})
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFortySeven(),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "1bl_upload_cv".tr,
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
              _buildJametKudasicV(),
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "1bl_information".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: CustomTextFormField(
                  controller: controller.fiftyTwoController,
                  hintText: "msg_explain_why_you".tr,
                  hintStyle: CustomTextStyles.bodySmallBluegray30003,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                  maxLines: 10,
                  contentPadding: EdgeInsets.all(20.h),
                  borderDecoration: TextFormFieldStyleHelper.outlineIndigoDTL20,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildApplyNow(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: Container(
        height: 29.v,
        width: 26.h,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 13.v,
          bottom: 13.v,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrowDownGray90002,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                left: 2.h,
                bottom: 5.v,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(
                top: 5.v,
                right: 2.h,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotificationGray90002,
          margin: EdgeInsets.fromLTRB(20.h, 13.v, 20.h, 18.v),
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
                    "1bl_ui_ux_designer".tr,
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
                          "1bl_google".tr,
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
                            "1b1_1_day_ago".tr,
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
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJametKudasicV() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: DottedBorder(
          color: appTheme.blueGray300,
          padding: EdgeInsets.only(
            left: 1.h,
            top: 1.v,
            right: 1.h,
            bottom: 1.v,
          ),
          strokeWidth: 1.h,
          radius: Radius.circular(20),
          borderType: BorderType.RRect,
          dashPattern: [
            3,
            3,
          ],
          child: Container(
            width: 335.h,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.outlineBluegray300.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder21,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 48.h),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 44.v,
                        width: 33.h,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUserRedA20003,
                              height: 44.v,
                              width: 33.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgContrast,
                                      height: 13.v,
                                      width: 12.h,
                                      alignment: Alignment.centerRight,
                                    ),
                                    SizedBox(height: 10.v),
                                    Text(
                                      "1b1_pdf".tr,
                                      style:
                                          CustomTextStyles.labelMediumExtraBold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 19.h,
                            top: 5.v,
                            bottom: 3.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_jamet_kudasi_cv".tr,
                                style:
                                    CustomTextStyles.bodySmal10penSansGray90004,
                              ),
                              SizedBox(height: 2.v),
                              Padding(
                                padding: EdgeInsets.only(right: 11.h),
                                child: Row(
                                  children: [
                                    Text(
                                      "1b1_867_kb".tr,
                                      style: CustomTextStyles
                                          .bodySmal10penSansBluegray40001,
                                    ),
                                    Container(
                                      height: 2.adaptSize,
                                      width: 2.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 5.h,
                                        top: 9.v,
                                        bottom: 4.v,
                                      ),
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray30003,
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text(
                                        "msg_14_feb_2022_at_11_30".tr,
                                        style: CustomTextStyles
                                            .bodySmal10penSansBluegray40001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 3.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "1b1_remove_file".tr,
                        style: CustomTextStyles.bodySmal10penSansOrange400,
                      ),
                    ),
                  ],
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
      text: "1bl_apply_now".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 29.h,
        right: 29.h,
        bottom: 36.v,
      ),
      buttonStyle: CustomButtonStyles.outlineIndigoDTL6,
    );
  }
}

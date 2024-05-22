import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/description_controller.dart';

// ignore_for_file: must_be_immutable
class DescriptionScreen extends GetWidget<DescriptionController> {
  const DescriptionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFortySeven(),
              SizedBox(height: 63.v),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "lbl_job_description".tr,
                  style: CustomTextStyles.titleSmallOpenSans,
                ),
              ),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 326.h,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    right: 28.h,
                  ),
                  child: Text(
                    "msg_sed_ut_perspiciatis".tr,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall0penSans,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              CustomElevatedButton(
                height: 30.v,
                width: 91.h,
                text: "lbl_read_more".tr,
                margin: EdgeInsets.only(left: 20.h),
                buttonStyle: CustomButtonStyles.fillOnPrimary,
                buttonTextStyle: CustomTextStyles.bodySmall0penSansGray90002,
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_requirements".tr,
                  style: CustomTextStyles.titleSmallOpenSans,
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 21.h,
                  right: 58.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(
                        top: 5.v,
                        bottom: 7.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray70001,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        "msg_sed_ut_perspiciatis2".tr,
                        style: CustomTextStyles.bodySmall0penSans,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              _buildNine(),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 21.h,
                  right: 74.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(
                        top: 6.v,
                        bottom: 24.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray70001,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 264.h,
                        margin: EdgeInsets.only(left: 11.h),
                        child: Text(
                          "msg_nemo_enim_ipsam".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmall0penSans,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              _buildTen(),
              SizedBox(height: 35.v),
              CustomElevatedButton(
                text: "lbl_apply_now".tr.toUpperCase(),
                margin: EdgeInsets.only(
                  left: 47.h,
                  right: 58.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
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
              decoration: AppDecoration.fillGray200,
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
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNine() {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 48.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4.adaptSize,
            width: 4.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 24.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.blueGray70001,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 290.h,
              margin: EdgeInsets.only(left: 11.h),
              child: Text(
                "msg_neque_porro_quisquam".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmall0penSans,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTen() {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 34.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4.adaptSize,
            width: 4.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 40.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.blueGray70001,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 304.h,
              margin: EdgeInsets.only(left: 11.h),
              child: Text(
                "msg_ut_enim_ad_minima".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmall0penSans,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

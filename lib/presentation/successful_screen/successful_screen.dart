import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/successful_controller.dart';

// ignore_for_file: must_be_immutable
class SuccessfulScreen extends GetWidget<SuccessfulController> {
  const SuccessfulScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFortySeven(),
              SizedBox(height: 31.v),
              _buildJametKudasiCV(),
              SizedBox(height: 19.v),
              CustomImageView(
                imagePath: ImageConstant.imgIllustration,
                height: 151.v,
                width: 152.h,
              ),
              SizedBox(height: 32.v),
              Container(
                decoration: AppDecoration.outlineIndigo2002d,
                child: Text(
                  "1bl_successful".tr,
                  style: CustomTextStyles.titleMediumPrimaryContainer,
                ),
              ),
              SizedBox(height: 17.v),
              Text(
                "msg_congratulations".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 38.v),
              CustomElevatedButton(
                width: 259.h,
                text: "msg_find_a_similar_job".tr.toUpperCase(),
                buttonStyle: CustomButtonStyles.outlineIndigoDTL61,
                buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
              ),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                width: 259.h,
                text: "lbl_back_to_home".tr.toUpperCase(),
                buttonStyle: CustomButtonStyles.outlineBlueGray,
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
      width: 374.h,
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
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "1b1_google".tr,
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
  Widget _buildJametKudasiCV() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillDeepPurpleA.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 44.v,
            width: 33.h,
            margin: EdgeInsets.only(bottom: 1.v),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUserRed700,
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
                          imagePath: ImageConstant.imgContrastRed300,
                          height: 13.v,
                          width: 12.h,
                          alignment: Alignment.centerRight,
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "1b1_pdf".tr,
                          style: CustomTextStyles.labelMediumExtraBold,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_jamet_kudasi_cv".tr,
                  style: CustomTextStyles.bodySmal10penSansGray90004,
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    Text(
                      "1b1_867_kb".tr,
                      style: CustomTextStyles.bodySmal10penSansBluegray40001,
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
                        style: CustomTextStyles.bodySmallBluegray30003,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

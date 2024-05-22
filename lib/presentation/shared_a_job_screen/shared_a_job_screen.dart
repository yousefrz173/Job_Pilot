import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:jobpilot/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/shared_a_job_controller.dart';

// ignore_for_file: must_be_immutable
class SharedAJobScreen extends GetWidget<SharedAJobController> {
  const SharedAJobScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 23.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_shared_a_job".tr,
                style: CustomTextStyles.titleMediumGray90001,
              ),
              SizedBox(height: 33.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 11.v,
                      bottom: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "lbl_orlando_diggs".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          "lbl_california_usa".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 33.v),
              Text(
                "lbl_description".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 9.v),
              _buildFortyNine(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildMenuBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownBlueGray70001,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_post".tr,
          margin: EdgeInsets.fromLTRB(20.h, 20.v, 20.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFortyNine() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineIndigoD.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 11.v),
          Text(
            "lbl_hey_guys".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 13.v),
          Container(
            width: 283.h,
            margin: EdgeInsets.only(right: 12.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_today_i_am_opening2".tr,
                    style: CustomTextStyles.bodySmal10penSansff514a6b,
                  ),
                  TextSpan(
                    text: "lbl_ui_ux_designer".tr,
                    style: CustomTextStyles.labelLargeff150b3d,
                  ),
                  TextSpan(
                    text: "lbl_at_an".tr,
                    style: CustomTextStyles.bodySmal10penSansff514a6b,
                  ),
                  TextSpan(
                    text: "lbl_apple_company".tr,
                    style: CustomTextStyles.labelLargeff150b3d,
                  ),
                  TextSpan(
                    text: "msg_to_see_a_job_description".tr,
                    style: CustomTextStyles.bodySmal10penSansff514a6b,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 33.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.fillGray5001.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder21,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 73.v),
                  child: CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillGrayTL20,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLogoApple,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_ui_ux_designer".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "msg_job_vacancies_from".tr,
                          style: CustomTextStyles.bodySmallOpenSans10,
                        ),
                        SizedBox(height: 2.v),
                        Row(
                          children: [
                            Text(
                              "lbl_california_usa".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            Container(
                              height: 2.adaptSize,
                              width: 2.adaptSize,
                              margin: EdgeInsets.only(
                                left: 7.h,
                                top: 6.v,
                                bottom: 8.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray70001,
                                borderRadius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "lbl_on_site".tr,
                                style: CustomTextStyles.bodySmallOpenSans10,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18.v),
                        CustomOutlinedButton(
                          width: 143.h,
                          text: "msg_application_details".tr,
                          buttonStyle: CustomButtonStyles.outlineGray,
                          buttonTextStyle:
                              CustomTextStyles.bodySmal10penSansGray90004,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuBar() {
    return Container(
      margin: EdgeInsets.only(
        left: 19.h,
        right: 19.h,
        bottom: 33.v,
      ),
      decoration: AppDecoration.outlineBluegray30001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserOrange40024x24,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCloseOrange40024x24,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 20.h),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_add_hashtag".tr,
              style: CustomTextStyles.labelLargeOrange400,
            ),
          ),
        ],
      ),
    );
  }
}

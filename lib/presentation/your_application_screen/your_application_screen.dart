import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/your_application_controller.dart';

// ignore_for_file: must_be_immutable
class YourApplicationScreen extends GetWidget<YourApplicationController> {
  const YourApplicationScreen({Key? key})
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
            vertical: 12.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_your_application".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 36.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 20.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder21,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGoogle220x15,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Text(
                      "lbl_ui_ux_designer".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 5.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1b1_google_inc".tr,
                          style:
                              CustomTextStyles.bodySmal10penSansBluegray40001,
                        ),
                        Container(
                          height: 2.adaptSize,
                          width: 2.adaptSize,
                          margin: EdgeInsets.only(
                            left: 5.h,
                            top: 8.v,
                            bottom: 7.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray90004,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "lbl_california_usa".tr,
                            style:
                                CustomTextStyles.bodySmal10penSansBluegray40001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(right: 56.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(
                              top: 5.v,
                              bottom: 8.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.gray40002,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              "msg_shipped_on_february".tr,
                              style: CustomTextStyles.bodySmall0penSans,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          margin: EdgeInsets.only(
                            top: 5.v,
                            bottom: 8.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray40002,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "msg_updated_by_recruiter".tr,
                            style: CustomTextStyles.bodySmall0penSans,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 27.v),
                    Text(
                      "lbl_job_details".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 21.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          margin: EdgeInsets.only(
                            top: 5.v,
                            bottom: 7.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray40002,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "lbl_senior_designer".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.v),
                    Row(
                      children: [
                        Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          margin: EdgeInsets.only(
                            top: 7.v,
                            bottom: 5.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray40002,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "1b1_full_time2".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 7.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray40002,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "msg_1_3_years_work_experience".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.v),
                    Text(
                      "msg_application_details".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 19.v),
                    Row(
                      children: [
                        Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 7.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray40002,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "1b1_cv_resume".tr,
                            style: CustomTextStyles.bodySmall0penSans,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    _buildJametKudasicV(),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              CustomElevatedButton(
                width: 213.h,
                text: "msg_apply_for_more_jobs".tr.toUpperCase(),
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
      leadingWidth: 374.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1BlueGray70001,
        margin: EdgeInsets.fromLTRB(22.h, 28.v, 334.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildJametKudasicV() {
    return Container(
      decoration: AppDecoration.outlineBluegray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: DottedBorder(
        color: appTheme.blueGray300,
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
            horizontal: 8.h,
            vertical: 14.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
                              style: CustomTextStyles.labelMediumExtraBold,
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
                    left: 20.h,
                    top: 4.v,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_jamet_kudasi_cv2".tr,
                        style: CustomTextStyles.bodySmallGray90003,
                      ),
                      SizedBox(height: 3.v),
                      Row(
                        children: [
                          Text(
                            "1b1_867_kb".tr,
                            style: CustomTextStyles.bodySmallGray40003,
                          ),
                          Container(
                            height: 2.adaptSize,
                            width: 2.adaptSize,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              top: 6.v,
                              bottom: 5.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.gray40002,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "msg_14_feb_2022_at_11_30".tr,
                              style: CustomTextStyles.bodySmallGray40002,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

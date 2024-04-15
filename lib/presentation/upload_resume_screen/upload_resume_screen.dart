import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/upload_resume_controller.dart';

// ignore_for_file: must_be_immutable
class UploadResumeScreen extends GetWidget<UploadResumeController> {
  const UploadResumeScreen({Key? key})
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
                "1b1_add_resume".tr,
                style: CustomTextStyles.titleMediumOpenSansGray90003,
              ),
              SizedBox(height: 29.v),
              _buildJametKudasicv(),
              SizedBox(height: 15.v),
              Container(
                width: 307.h,
                margin: EdgeInsets.only(right: 28.h),
                child: Text(
                  "msg_upload_files_in".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmall0penSansBluegray30003,
                ),
              ),
              Spacer(),
              SizedBox(height: 66.v),
              CustomElevatedButton(
                width: 213.h,
                text: "lbl_save".tr.toUpperCase(),
                alignment: Alignment.center,
              ),
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
  Widget _buildJametKudasicv() {
    return DottedBorder(
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
                        left: 19.h,
                        top: 5.v,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "msg_jamet_kudasi_cv".tr,
                            style: CustomTextStyles.bodySmall0penSansGray90003,
                          ),
                          SizedBox(height: 2.v),
                          Padding(
                            padding: EdgeInsets.only(right: 4.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                    bottom: 6.v,
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
                    "1bl_remove_file".tr,
                    style: CustomTextStyles.bodySmal10penSansOrange400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

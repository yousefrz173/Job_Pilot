import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/add_resume_controller.dart';

// ignore_for_file: must_be_immutable
class AddResumeScreen extends GetWidget<AddResumeController> {
  const AddResumeScreen({Key? key})
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
                "lbl_add_resume".tr,
                style: CustomTextStyles.titleMediumOpenSansGray90003,
              ),
              SizedBox(height: 30.v),
              _buildUploadCVResume(),
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
  Widget _buildUploadCVResume() {
    return Container(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTwitterBlueGray80002,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(top: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6.v),
                child: Text(
                  "msg_upload_cv_resume".tr,
                  style: CustomTextStyles.bodySmall0penSansGray90003,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

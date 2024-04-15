import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/edit_appreciation_controller.dart'; // ignore_for_file: must_be_immutable

class EditAppreciationScreen extends GetWidget<EditAppreciationController> {
  const EditAppreciationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 30.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCloseGray90003,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  onTap: () {
                    onTapImgClose();
                  }),
              SizedBox(height: 41.v),
              Text(
                "msg_edit_appreciation".tr,
                style: CustomTextStyles.titleMediumGray90003Medium,
              ),
              SizedBox(height: 29.v),
              Text(
                "lbl_award_name".tr,
                style: CustomTextStyles.labelLargeGray90003,
              ),
              SizedBox(height: 10.v),
              _buildName(),
              SizedBox(height: 20.v),
              Text(
                "msg_category_achievement".tr,
                style: CustomTextStyles.labelLargeGray90003,
              ),
              SizedBox(height: 9.v),
              _buildYoungScientist(),
              SizedBox(height: 19.v),
              Text(
                "1bl_end_date".tr,
                style: CustomTextStyles.labelLargeGray90003,
              ),
              SizedBox(height: 10.v),
              _buildDate(),
              SizedBox(height: 21.v),
              Text(
                "1bl_description".tr,
                style: CustomTextStyles.labelLargeGray90003,
              ),
              SizedBox(height: 9.v),
              _buildGroup143(),
              SizedBox(height: 86.v),
              _buildButtonRemove(),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
      controller: controller.nameController,
      hintText: "msg_wireless_symposium".tr,
      hintStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildYoungScientist() {
    return CustomTextFormField(
      controller: controller.youngScientistController,
      hintText: "lbl_young_scientist".tr,
      hintStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildDate() {
    return CustomTextFormField(
      width: 160.h,
      controller: controller.dateController,
      hintText: "1b1_2014".tr,
      hintStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildGroup143() {
    return CustomTextFormField(
      controller: controller.group143Controller,
      hintText: "msg_write_additional".tr,
      hintStyle: CustomTextStyles.bodySmallBluegray30003,
      textInputAction: TextInputAction.done,
      maxLines: 9,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildRemove() {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_remove".tr.toUpperCase(),
        margin: EdgeInsets.only(right: 7.h),
        buttonStyle: CustomButtonStyles.fillDeepPurple,
      ),
    );
  }

  /// Section Widget
  Widget _buildSave() {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_save".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 7.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonRemove() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_buildRemove(), _buildSave()],
    );
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}

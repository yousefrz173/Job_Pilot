import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_radio_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/add_language_controller.dart';

// ignore_for_file: must_be_immutable
class AddLanguageScreen extends GetWidget<AddLanguageController> {
  const AddLanguageScreen({Key? key})
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
            vertical: 25.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_add_language".tr,
                  style: CustomTextStyles.titleMediumGray90003,
                ),
              ),
              SizedBox(height: 29.v),
              _buildLanguage(),
              SizedBox(height: 20.v),
              _buildProficiencyLevel(),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text(
                    "msg_proficiency_level".tr,
                    style: CustomTextStyles.bodySmallBluegray30003,
                  ),
                ),
              ),
              Spacer(),
              SizedBox(height: 66.v),
              CustomElevatedButton(
                width: 213.h,
                text: "lbl_save".tr.toUpperCase(),
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
        imagePath: ImageConstant.imgArrow1Gray90003,
        margin: EdgeInsets.fromLTRB(22.h, 28.v, 334.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguage() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 5.v,
                ),
                child: Text(
                  "1b1_language".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle4,
                height: 30.adaptSize,
                width: 30.adaptSize,
                radius: BorderRadius.circular(
                  15.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 6.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "lbl_indonesian".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 19.v),
          Obx(
            () => CustomRadioButton(
              width: 305.h,
              text: "lbl_first_language".tr,
              value: "lbl_first_language".tr,
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              textStyle: theme.textTheme.labelLarge,
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProficiencyLevel() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_oral".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 15.v),
          Text(
            "lbl_level_10".tr,
            style: CustomTextStyles.bodySmallBluegray30003,
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 18.v),
          Text(
            "lbl_written".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 16.v),
          Text(
            "msg_choose_your_speaking".tr,
            style: CustomTextStyles.bodySmallBluegray30003,
          ),
        ],
      ),
    );
  }
}

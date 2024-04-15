import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_checkbox_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/change_education_controller.dart';

// ignore_for_file: must_be_immutable
class ChangeEducationScreen extends GetWidget<ChangeEducationController> {
  const ChangeEducationScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 25.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "msg_change_education".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 29.v),
              Text(
                "msg_level_of_education".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 10.v),
              _buildEightyNine(),
              SizedBox(height: 19.v),
              Text(
                "msg_institution_name".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 10.v),
              _buildName(),
              SizedBox(height: 21.v),
              Text(
                "1b1_field_of_study".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 9.v),
              _buildNinetyOne(),
              SizedBox(height: 19.v),
              _buildDate(),
              SizedBox(height: 20.v),
              _buildThisismypositionnow(),
              SizedBox(height: 21.v),
              Text(
                "lbl_description".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 9.v),
              _buildNinetyFive(),
            ],
          ),
        ),
        bottomNavigationBar: _buildButtonRemove(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: Container(
        height: 12.adaptSize,
        width: 12.adaptSize,
        margin: EdgeInsets.fromLTRB(26.h, 22.v, 337.h, 22.v),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector87,
              height: 12.adaptSize,
              width: 12.adaptSize,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector88,
              height: 12.adaptSize,
              width: 12.adaptSize,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyNine() {
    return CustomTextFormField(
      controller: controller.eightyNineController,
      hintText: "msg_bachelor_of_information".tr,
      hintStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
      controller: controller.nameController,
      hintText: "msg_university_of_oxford".tr,
      hintStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildNinetyOne() {
    return CustomTextFormField(
      controller: controller.ninetyOneController,
      hintText: "msg_information_technology".tr,
      hintStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildDate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_start_date".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 10.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.outlineIndigoD.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          "1bl_sep_2010".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1bl_end_date".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 10.v),
                CustomTextFormField(
                  width: 160.h,
                  controller: controller.dateController,
                  hintText: "1bl_aug_2013".tr,
                  hintStyle: theme.textTheme.bodySmall!,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThisismypositionnow() {
    return Obx(
      () => CustomCheckboxButton(
        text: "msg_this_is_my_position".tr,
        value: controller.thisismypositionnow.value,
        padding: EdgeInsets.symmetric(vertical: 3.v),
        onChange: (value) {
          controller.thisismypositionnow.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyFive() {
    return CustomTextFormField(
      controller: controller.ninetyFiveController,
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
    return CustomElevatedButton(
      width: 160.h,
      text: "lbl_remove".tr.toUpperCase(),
      buttonStyle: CustomButtonStyles.fillDeepPurple,
    );
  }

  /// Section Widget
  Widget _buildSave() {
    return CustomElevatedButton(
      width: 160.h,
      text: "lbl_save".tr.toUpperCase(),
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildButtonRemove() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 20.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildRemove(),
          _buildSave(),
        ],
      ),
    );
  }
}

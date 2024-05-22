import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_checkbox_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/change_work_experience_controller.dart';

// ignore_for_file: must_be_immutable
class ChangeWorkExperienceScreen
    extends GetWidget<ChangeWorkExperienceController> {
  const ChangeWorkExperienceScreen({Key? key})
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
            children: [
              Text(
                "msg_change_work_experience".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 29.v),
              Text(
                "lbl_job_title".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 10.v),
              _buildManager(),
              SizedBox(height: 21.v),
              Text(
                "1b1_company".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 8.v),
              _buildAmazonInc(),
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
              _buildGroup100(),
              SizedBox(height: 42.v),
              _buildButtonRemove(),
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
        imagePath: ImageConstant.imgArrow1BlueGray80002,
        margin: EdgeInsets.fromLTRB(22.h, 28.v, 334.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildManager() {
    return CustomTextFormField(
      controller: controller.managerController,
      hintText: "lbl_manager".tr,
      hintStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildAmazonInc() {
    return CustomTextFormField(
      controller: controller.amazonIncController,
      hintText: "lbl_amazon_inc".tr,
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
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.outlineIndigoD.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "1b1_jan_2015".tr,
                        style: theme.textTheme.bodySmall,
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
                  "lbl_end_date".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 10.v),
                CustomTextFormField(
                  width: 160.h,
                  controller: controller.dateController,
                  hintText: "lbl_feb_2022".tr,
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
  Widget _buildGroup100() {
    return CustomTextFormField(
      controller: controller.group100Controller,
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
      children: [
        _buildRemove(),
        _buildSave(),
      ],
    );
  }
}

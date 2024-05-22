import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_checkbox_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/add_work_experience_controller.dart';

// ignore_for_file: must_be_immutable
class AddWorkExperienceScreen extends GetWidget<AddWorkExperienceController> {
  const AddWorkExperienceScreen({Key? key})
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
                "msg_add_work_experience".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 29.v),
              Text(
                "lbl_job_title".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 10.v),
              _buildEditText(),
              SizedBox(height: 21.v),
              Text(
                "lbl_company".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 8.v),
              _buildEditText1(),
              SizedBox(height: 19.v),
              _buildStartDate(),
              SizedBox(height: 20.v),
              _buildThisismypositionnow(),
              SizedBox(height: 21.v),
              Text(
                "lbl_description".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 9.v),
              _buildEightySeven(),
              SizedBox(height: 50.v),
              _buildSave(),
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
  Widget _buildEditText() {
    return CustomTextFormField(
      controller: controller.editTextController,
    );
  }

  /// Section Widget
  Widget _buildEditText1() {
    return CustomTextFormField(
      controller: controller.editText1Controller,
    );
  }

  /// Section Widget
  Widget _buildStartDate() {
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
                  "lbl start date".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 10.v),
                Container(
                  height: 40.v,
                  width: 160.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.indigo2002d,
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          4,
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
                  "lbl_end_date".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 10.v),
                Container(
                  height: 40.v,
                  width: 160.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.indigo2002d,
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          4,
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
  Widget _buildEightySeven() {
    return CustomTextFormField(
      controller: controller.eightySevenController,
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
  Widget _buildSave() {
    return CustomElevatedButton(
      width: 213.h,
      text: "lbl_save".tr.toUpperCase(),
      alignment: Alignment.center,
    );
  }
}

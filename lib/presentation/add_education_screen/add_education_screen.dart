import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_checkbox_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/add_education_controller.dart';

// ignore_for_file: must_be_immutable
class AddEducationScreen extends GetWidget<AddEducationController> {
  const AddEducationScreen({Key? key})
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
            vertical: 23.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "1bl_add_education".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_level_of_education".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 10.v),
              _buildEditText(),
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
              _buildEditText1(),
              SizedBox(height: 19.v),
              _buildStartDate(),
              SizedBox(height: 20.v),
              _buildThisismypositionnow(),
              SizedBox(height: 21.v),
              Text(
                "1b1_description".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 9.v),
              _buildGroup122(),
              SizedBox(height: 3.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSave(),
      ),
    );
  }

  ///Section Widget
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
  Widget _buildName() {
    return CustomTextFormField(
      controller: controller.nameController,
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
                  "lbl_start_date".tr,
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
                  "1bl_end_date".tr,
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
  Widget _buildGroup122() {
    return CustomTextFormField(
      controller: controller.group122Controller,
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
      margin: EdgeInsets.only(
        left: 81.h,
        right: 81.h,
        bottom: 20.v,
      ),
    );
  }
}

import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/add_appreciation_controller.dart';

// ignore_for_file: must_be_immutable
class AddAppreciationScreen extends GetWidget<AddAppreciationController> {
  const AddAppreciationScreen({Key? key})
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
                "msg_add_appreciation".tr,
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
              _buildEditText(),
              SizedBox(height: 19.v),
              Text(
                "1bl_end_date".tr,
                style: CustomTextStyles.labelLargeGray90003,
              ),
              SizedBox(height: 10.v),
              _buildDate(),
              SizedBox(height: 21.v),
              Text(
                "lbl_description".tr,
                style: CustomTextStyles.labelLargeGray90003,
              ),
              SizedBox(height: 9.v),
              _buildEightyEight(),
              SizedBox(height: 86.v),
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
        imagePath: ImageConstant.imgArrow1BlueGray70001,
        margin: EdgeInsets.fromLTRB(22.h, 28.v, 334.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
      controller: controller.nameController,
    );
  }

  /// Section Widget
  Widget _buildEditText() {
    return CustomTextFormField(
      controller: controller.editTextController,
    );
  }

  /// Section Widget
  Widget _buildDate() {
    return CustomTextFormField(
      width: 160.h,
      controller: controller.dateController,
    );
  }

  /// Section Widget
  Widget _buildEightyEight() {
    return CustomTextFormField(
      controller: controller.eightyEightController,
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

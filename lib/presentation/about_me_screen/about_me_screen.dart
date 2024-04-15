import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/about_me_controller.dart';

// ignore_for_file: must_be_immutable
class AboutMeScreen extends GetWidget<AboutMeController> {
  const AboutMeScreen({Key? key})
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
            vertical: 24.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "1bl_about_me".tr,
                  style: CustomTextStyles.titleMediumOpenSansSemiBold,
                ),
              ),
              SizedBox(height: 30.v),
              CustomTextFormField(
                controller: controller.tellmeaboutyouController,
                hintText: "msg_tell_me_about_you".tr,
                hintStyle: CustomTextStyles.bodySmall0penSansBluegray30003_1,
                textInputAction: TextInputAction.done,
                maxLines: 13,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 18.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.outlineIndigoDTL20,
              ),
              Spacer(),
              SizedBox(height: 76.v),
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
        imagePath: ImageConstant.imgArrow1BlueGray80002,
        margin: EdgeInsets.fromLTRB(22.h, 28.v, 334.h, 27.v),
      ),
    );
  }
}

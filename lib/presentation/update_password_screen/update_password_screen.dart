import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/update_password_controller.dart';

// ignore_for_file: must_be_immutable
class UpdatePasswordScreen extends GetWidget<UpdatePasswordController> {
  const UpdatePasswordScreen({Key? key})
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
                "lbl_update_password".tr,
                style: CustomTextStyles.titleMediumGray90003Medium,
              ),
              SizedBox(height: 24.v),
              Text(
                "lbl_old_password".tr,
                style: CustomTextStyles.labelLargeGray90003,
              ),
              SizedBox(height: 10.v),
              _buildPassword(),
              SizedBox(height: 14.v),
              Text(
                "lbl_new_password".tr,
                style: CustomTextStyles.labelLargeGray90003,
              ),
              SizedBox(height: 10.v),
              _buildNewpassword(),
              SizedBox(height: 14.v),
              Text(
                "msg_confirm_password".tr,
                style: CustomTextStyles.labelLargeGray90003,
              ),
              SizedBox(height: 10.v),
              _buildConfirmpassword(),
              Spacer(),
              SizedBox(height: 65.v),
              _buildUpdate(),
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
  Widget _buildPassword() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.passwordController,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword.value = !controller.isShowPassword.value;
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(30.h, 8.v, 20.h, 8.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        obscureText: controller.isShowPassword.value,
      ),
    );
  }

  /// Section Widget
  Widget _buildNewpassword() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.newpasswordController,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword1.value =
                !controller.isShowPassword1.value;
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(30.h, 8.v, 20.h, 8.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        obscureText: controller.isShowPassword1.value,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.confirmpasswordController,
        textInputAction: TextInputAction.done,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword2.value =
                !controller.isShowPassword2.value;
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(30.h, 8.v, 20.h, 8.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        obscureText: controller.isShowPassword2.value,
      ),
    );
  }

  /// Section Widget
  Widget _buildUpdate() {
    return CustomElevatedButton(
      width: 213.h,
      text: "lbl_update".tr.toUpperCase(),
      alignment: Alignment.center,
    );
  }
}

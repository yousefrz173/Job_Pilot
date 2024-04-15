import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_switch.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/core/utils/validation_functions.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/settings_controller.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends GetWidget<SettingsController> {
  SettingsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SizedBox(
              height: SizeUtils.height,
              child: Form(
                key: _formKey,
                child: Container(
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
                          "lbl_settings".tr,
                          style: CustomTextStyles.titleMediumGray90003Medium,
                        ),
                      ),
                      SizedBox(height: 24.v),
                      _buildNotifications(),
                      SizedBox(height: 10.v),
                      _buildDarkMode(),
                      SizedBox(height: 10.v),
                      Obx(
                        () => CustomTextFormField(
                          controller: controller.passwordController,
                          hintText: "1bl_password".tr,
                          hintStyle: CustomTextStyles.bodySmallGray90004,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(20.h, 13.v, 11.h, 13.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgBag,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 50.v,
                          ),
                          suffix: InkWell(
                            onTap: () {
                              controller.isShowPassword.value =
                                  !controller.isShowPassword.value;
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 1.v,
                                right: 2.h,
                                bottom: 1.v,
                              ),
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 19.v, 23.h, 19.v),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(
                                  6.h,
                                ),
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowright,
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                              ),
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 50.v,
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_password".tr;
                            }
                            return null;
                          },
                          obscureText: controller.isShowPassword.value,
                          contentPadding: EdgeInsets.symmetric(vertical: 17.v),
                        ),
                      ),
                      SizedBox(height: 10.v),
                      CustomTextFormField(
                        controller: controller.logOutController,
                        hintText: "1bl_logout".tr,
                        hintStyle: CustomTextStyles.bodySmallGray90004,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(20.h, 13.v, 11.h, 13.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgTelevisionBlueGray80001,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 50.v,
                        ),
                        suffix: Container(
                          padding: EdgeInsets.only(
                            top: 1.v,
                            right: 2.h,
                            bottom: 1.v,
                          ),
                          margin: EdgeInsets.fromLTRB(30.h, 19.v, 23.h, 19.v),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowright,
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 50.v,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 17.v),
                      ),
                      Spacer(),
                      SizedBox(height: 65.v),
                      CustomElevatedButton(
                        width: 213.h,
                        text: "lbl_save".tr.toUpperCase(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
  Widget _buildNotifications() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineIndigoD.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup45,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_notifications".tr,
              style: CustomTextStyles.bodySmallGray90004,
            ),
          ),
          Spacer(),
          Obx(
            () => CustomSwitch(
              margin: EdgeInsets.only(top: 3.v),
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDarkMode() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineIndigoD.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMobile,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Text(
              "1bl_dark_mode".tr,
              style: CustomTextStyles.bodySmallGray90004,
            ),
          ),
          Spacer(),
          Obx(
            () => CustomSwitch(
              margin: EdgeInsets.only(top: 3.v),
              value: controller.isSelectedSwitch1.value,
              onChange: (value) {
                controller.isSelectedSwitch1.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}

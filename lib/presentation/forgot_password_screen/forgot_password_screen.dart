import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/forgot_password_controller.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  const ForgotPasswordScreen({Key? key})
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
          padding: EdgeInsets.only(
            left: 20.h,
            top: 92.v,
            right: 20.h,
          ),
          child: Column(
            children: [
              Text(
                "msg_forgot_password2".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 9.v),
              Container(
                width: 301.h,
                margin: EdgeInsets.only(
                  left: 17.h,
                  right: 16.h,
                ),
                child: Text(
                  "msg_to_reset_your_password".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.60,
                  ),
                ),
              ),
              SizedBox(height: 49.v),
              SizedBox(
                height: 93.v,
                width: 118.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.only(left: 13.h),
                        color: theme.colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.circleBorder41,
                        ),
                        child: Container(
                          height: 82.adaptSize,
                          width: 82.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 19.h,
                            vertical: 23.v,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder41,
                          ),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      12.h,
                                    ),
                                    border: Border.all(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      width: 5.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                  height: 22.adaptSize,
                                  width: 22.adaptSize,
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgCloseDeepPurpleA700,
                                        height: 22.adaptSize,
                                        width: 22.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 1.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector231,
                                                height: 4.v,
                                                width: 2.h,
                                                margin:
                                                    EdgeInsets.only(top: 4.v),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector231,
                                                height: 4.v,
                                                width: 2.h,
                                                margin: EdgeInsets.only(
                                                  left: 4.h,
                                                  bottom: 4.v,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 42.adaptSize,
                          width: 42.adaptSize,
                          margin: EdgeInsets.only(
                            left: 5.h,
                            top: 3.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray70087,
                            borderRadius: BorderRadius.circular(
                              21.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(right: 76.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fill0range100.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder21,
                        ),
                        child: Text(
                          "lbl".tr,
                          style: CustomTextStyles
                              .titleLargeOpenSansOnPrimaryContainer,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                      height: 93.v,
                      width: 53.h,
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 71.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "1bl_email".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomTextFormField(
                  controller: controller.emailController,
                  hintText: "msg_brandonelouis_gmail_com".tr,
                  hintStyle: CustomTextStyles.bodySmallGray90099,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 17.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineIndigoDTL6,
                ),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "lbl_reset_password".tr.toUpperCase(),
                margin: EdgeInsets.symmetric(horizontal: 9.h),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "lbl_back_to_login".tr.toUpperCase(),
                margin: EdgeInsets.symmetric(horizontal: 9.h),
                buttonStyle: CustomButtonStyles.fillDeepPurple,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}

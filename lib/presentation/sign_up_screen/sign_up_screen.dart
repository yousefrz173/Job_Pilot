import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_checkbox_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/sign_up_controller.dart';
import 'package:jobpilot/domain/googleauth/google_auth_helper.dart'; // ignore_for_file: must_be_immutable

class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({Key? key})
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
          padding: EdgeInsets.symmetric(horizontal: 28.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 12.v),
              Text(
                "msg_create_an_account".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 12.v),
              Container(
                width: 285.h,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                child: Text(
                  "msg_lorem_ipsum_dolor".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.60,
                  ),
                ),
              ),
              SizedBox(height: 61.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_full_name".tr,
                  style: CustomTextStyles.labelLargeGray90002,
                ),
              ),
              SizedBox(height: 10.v),
              _buildFullName(),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_email".tr,
                  style: CustomTextStyles.labelLargeGray90002,
                ),
              ),
              SizedBox(height: 10.v),
              _buildEmail(),
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_password".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 10.v),
              _buildPassword(),
              SizedBox(height: 20.v),
              _buildRememberme(),
              SizedBox(height: 20.v),
              _buildSignUp(),
              SizedBox(height: 15.v),
              _buildSignUpWithGoogle(),
              SizedBox(height: 16.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_already_have_an".tr,
                      style: CustomTextStyles.bodySmal10penSansff514a6b,
                    ),
                    TextSpan(
                      text: "lbl_sign_in".tr,
                      style:
                          CustomTextStyles.bodySmal10penSansff333030.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
      controller: controller.fullNameController,
      hintText: "lbl_brandone_louis".tr,
      hintStyle: CustomTextStyles.bodySmallGray90099,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 17.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "msg_brandonelouis_gmail_com".tr,
      hintStyle: CustomTextStyles.bodySmallGray90099,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 17.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.passwordController,
        textInputAction: TextInputAction.done,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword.value = !controller.isShowPassword.value;
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 22.h, 13.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 50.v,
        ),
        obscureText: controller.isShowPassword.value,
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberme() {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => CustomCheckboxButton(
              text: "lbl_remember_me".tr,
              value: controller.rememberme.value,
              padding: EdgeInsets.symmetric(vertical: 3.v),
              textStyle: CustomTextStyles.bodySmallBluegray30003,
              onChange: (value) {
                controller.rememberme.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 2.v,
            ),
            child: Text(
              "msg_forgot_password".tr,
              style: CustomTextStyles.bodySmallGray90002,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
      text: "lbl_sign_up".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 26.h,
        right: 27.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpWithGoogle() {
    return CustomElevatedButton(
      text: "msg_sign_up_with_google".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 27.h,
        right: 28.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle220x15,
          height: 20.v,
          width: 15.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillDeepPurple,
      onPressed: () {
        onTapSignUpWithGoogle();
      },
    );
  }

  onTapSignUpWithGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}

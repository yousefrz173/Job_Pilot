import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_checkbox_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/login_controller.dart';
import 'package:jobpilot/domain/googleauth/google_auth_helper.dart'; // ignore_for_file: must_be_immutable

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 21.h,
            top: 101.v,
            right: 21.h,
          ),
          child: Column(
            children: [
              Text(
                "1bl_welcome_back".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 12.v),
              Container(
                width: 285.h,
                margin: EdgeInsets.symmetric(horizontal: 23.h),
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
                child: Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "lbl_email".tr,
                    style: CustomTextStyles.labelLargeGray90002,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              _buildEmail(),
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "1bl_password".tr,
                    style: CustomTextStyles.labelLargeOpenSansGray90002,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              _buildPassword(),
              SizedBox(height: 20.v),
              _buildRememberme(),
              SizedBox(height: 32.v),
              _buildLogin(),
              SizedBox(height: 19.v),
              _buildSignInWithGoogle(),
              SizedBox(height: 16.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_you_don_t_have_an2".tr,
                      style: CustomTextStyles.bodySmal10penSansff514a6b,
                    ),
                    TextSpan(
                      text: "lbl_sign_up".tr,
                      style:
                          CustomTextStyles.bodySmal10penSansff333030.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: CustomTextFormField(
        textStyle: TextStyle(color: Colors.orange),
        controller: controller.emailController,
        hintText: "msg_brandonelouis_gmail_com".tr,
        hintStyle: CustomTextStyles.bodySmal10penSansGray90004,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 17.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Obx(
        () => CustomTextFormField(
          controller: controller.passwordController,
          textInputAction: TextInputAction.done,
          suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 13.v, 11.h, 13.v),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberme() {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => CustomCheckboxButton(
              text: "1bl_remember_me".tr,
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
  Widget _buildLogin() {
    return CustomElevatedButton(
      text: "1bl_login".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 36.h,
        right: 31.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInWithGoogle() {
    return CustomElevatedButton(
      text: "msg_sign_in_with_google".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 38.h,
        right: 31.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 11.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            6.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle2,
          height: 20.v,
          width: 15.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillDeepPurple,
      buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
      onPressed: () {
        onTapSignInWithGoogle();
      },
    );
  }

  onTapSignInWithGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
//TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}

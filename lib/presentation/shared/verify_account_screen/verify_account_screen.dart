import '../../../widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import '../../../core/my_app_export.dart';
import '../../../widgets/custom_text_form_field.dart';
import 'controller/verify_account_controller.dart';

// ignore_for_file: must_be_immutable
class VerifyAccountScreen extends GetWidget<VerifyAccountController> {
  const VerifyAccountScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 28.h,
              top: 91.v,
              right: 28.h,
            ),
            child: Column(
              children: [
                Text(
                  "msg_check_your_email".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 8.v),
                Container(
                  width: 301.h,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    right: 8.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_we_have_sent_the2".tr,
                          style: CustomTextStyles.bodySmallff514a6b,
                        ),
                        TextSpan(
                          text: "msg_brandonelouis_gmial_com".tr,
                          style: CustomTextStyles.bodySmallff150b3d,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 47.v),
                CustomImageView(
                  imagePath: ImageConstant.imgUndrawMessageSentReQ2kl,
                  height: 109.v,
                ),
                SizedBox(height: 44.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_verification_code".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.h),
                  child: CustomTextFormField(
                    textStyle: TextStyle(color: Colors.amber),
                    controller: controller.verificationCodeController.value,
                    hintText: "msg_brandonelouis_gmail_com".tr,
                    hintStyle: CustomTextStyles.bodySmallGray90099,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 17.v,
                    ),
                    borderDecoration:
                        TextFormFieldStyleHelper.outlineIndigoDTL6,
                  ),
                ),
                SizedBox(height: 29.v),
                CustomElevatedButton(
                  text: "lbl_verify".tr.toUpperCase(),
                  onPressed: () async => await controller.verify(),
                ),
                SizedBox(height: 15.v),
                CustomElevatedButton(
                  onPressed: () => Get.toNamed(AppRoutes.homeScreen),
                  text: "lbl_back_to_home".tr.toUpperCase(),
                  buttonStyle: CustomButtonStyles.fillOrange,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/check_your_email_controller.dart';

// ignore_for_file: must_be_immutable
class CheckYourEmailScreen extends GetWidget<CheckYourEmailController> {
  const CheckYourEmailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
              SizedBox(height: 94.v),
              CustomElevatedButton(
                text: "lbl_open_your_email".tr.toUpperCase(),
              ),
              SizedBox(height: 15.v),
              CustomElevatedButton(
                text: "lbl_back_to_login".tr.toUpperCase(),
                buttonStyle: CustomButtonStyles.fillDeepPurple,
              ),
              SizedBox(height: 32.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_you_have_not_received2".tr,
                      style: CustomTextStyles.bodySmallff150b3d,
                    ),
                    TextSpan(
                      text: "lbl_resend".tr,
                      style: CustomTextStyles.bodySmallffff9228.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/successfully_controller.dart';

// ignore_for_file: must_be_immutable
class SuccessfullyScreen extends GetWidget<SuccessfullyController> {
  const SuccessfullyScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 96.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_successfully".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 298.h,
                  margin: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "msg_your_password_has".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.60,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 48.v),
              CustomImageView(
                imagePath: ImageConstant.imgUndrawMessageSentReQ2klPrimary,
                height: 117.v,
                width: 139.h,
              ),
              Spacer(
                flex: 43,
              ),
              CustomElevatedButton(
                text: "lbl_continue".tr.toUpperCase(),
                margin: EdgeInsets.symmetric(horizontal: 8.h),
              ),
              SizedBox(height: 15.v),
              CustomElevatedButton(
                text: "lbl_back_to_login".tr.toUpperCase(),
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                buttonStyle: CustomButtonStyles.fillDeepPurple,
              ),
              Spacer(
                flex: 56,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

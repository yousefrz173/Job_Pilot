import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/log_out_controller.dart';

class LogOutBottomsheet extends StatelessWidget {
  LogOutBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );
  LogOutController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector56Primary,
            height: 4.v,
            width: 30.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
          SizedBox(height: 47.v),
          Text(
            "1bl_log_out2".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 10.v),
          Text(
            "msg_are_you_sure_you6".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 44.v),
          CustomElevatedButton(
            text: "lbl_yes".tr.toUpperCase(),
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            text: "lbl_cancel".tr.toUpperCase(),
            buttonStyle: CustomButtonStyles.fillDeepPurple,
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}

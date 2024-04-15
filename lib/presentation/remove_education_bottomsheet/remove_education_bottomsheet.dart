import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/remove_education_controller.dart';

class RemoveEducationBottomsheet extends StatelessWidget {
  RemoveEducationBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );
  RemoveEducationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector56Gray700,
            height: 4.v,
            width: 30.h,
          ),
          SizedBox(height: 45.v),
          Text(
            "msg_remove_education".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 12.v),
          Text(
            "msg_are_you_sure_you3".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 44.v),
          CustomElevatedButton(
            text: "msg_continue_filling".tr.toUpperCase(),
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            text: "1bl_undo_changes2".tr.toUpperCase(),
            buttonStyle: CustomButtonStyles.fillDeepPurple,
          ),
        ],
      ),
    );
  }
}
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/remove_appreciation_controller.dart';

class RemoveAppreciationBottomsheet extends StatelessWidget {
  RemoveAppreciationBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  RemoveAppreciationController controller;

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector56Primary,
            height: 4.v,
            width: 30.h,
          ),
          SizedBox(height: 47.v),
          Text(
            "msg_remove_appreciation".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 10.v),
          Text(
            "msg_are_you_sure_you5".tr,
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
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}

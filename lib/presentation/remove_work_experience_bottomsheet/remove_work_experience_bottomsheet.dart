import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/remove_work_experience_controller.dart';

class RemoveWorkExperienceBottomsheet extends StatelessWidget {
  RemoveWorkExperienceBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );
  RemoveWorkExperienceController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
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
          SizedBox(height: 47.v),
          Text(
            "msg_remove_work_experience".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 10.v),
          Text(
            "msg_are_you_sure_you2".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 39.v),
          CustomElevatedButton(
            text: "msg_continue_filling".tr.toUpperCase(),
            margin: EdgeInsets.only(right: 16.h),
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            text: "1bl_undo_changes2".tr.toUpperCase(),
            margin: EdgeInsets.only(right: 16.h),
            buttonStyle: CustomButtonStyles.fillDeepPurple,
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}

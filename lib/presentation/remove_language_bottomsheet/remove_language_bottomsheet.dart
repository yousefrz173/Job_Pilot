import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/remove_language_controller.dart';

class RemoveLanguageBottomsheet extends StatelessWidget {
  RemoveLanguageBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );
  RemoveLanguageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
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
            imagePath: ImageConstant.imgVector56Gray90004,
            height: 4.v,
            width: 30.h,
          ),
          SizedBox(height: 45.v),
          Text(
            "msg_remove_indonesian".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 12.v),
          Text(
            "msg_are_you_sure_you4".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 43.v),
          CustomElevatedButton(
            text: "msg_continue_filling".tr.toUpperCase(),
            margin: EdgeInsets.symmetric(horizontal: 3.h),
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            text: "1bl_undo_changes2".tr.toUpperCase(),
            margin: EdgeInsets.symmetric(horizontal: 3.h),
            buttonStyle: CustomButtonStyles.fillDeepPurple,
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}

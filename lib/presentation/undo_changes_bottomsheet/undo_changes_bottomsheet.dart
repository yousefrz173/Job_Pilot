import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/undo_changes_controller.dart';

class UndoChangesBottomsheet extends StatelessWidget {
  UndoChangesBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  UndoChangesController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 44.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector56Gray90004,
            height: 4.v,
            width: 30.h,
          ),
          SizedBox(height: 47.v),
          Text(
            "lbl_undo_changes".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 10.v),
          Text(
            "msg_are_you_sure_you".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 38.v),
          CustomElevatedButton(
            text: "msg_continue_filling".tr.toUpperCase(),
            margin: EdgeInsets.symmetric(horizontal: 37.h),
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            text: "lbl_undo_changes2".tr.toUpperCase(),
            margin: EdgeInsets.symmetric(horizontal: 37.h),
            buttonStyle: CustomButtonStyles.fillDeepPurple,
          ),
        ],
      ),
    );
  }
}

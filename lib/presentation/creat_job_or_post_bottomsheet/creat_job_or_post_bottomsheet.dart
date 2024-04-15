import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/creat_job_or_post_controller.dart';

class CreatJobOrPostBottomsheet extends StatelessWidget {
  CreatJobOrPostBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );
  CreatJobOrPostController controller;

  @override
  Widget build(BuildContext context) {
    return _buildScrollView();
  }

  /// Section Widget
  Widget _buildScrollView() {
    return SingleChildScrollView(
      child: Container(
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
              imagePath: ImageConstant.imgVector56,
              height: 4.v,
            ),
            SizedBox(height: 47.v),
            Text(
              "msg_what_would_you_like".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 9.v),
            Container(
              width: 284.h,
              margin: EdgeInsets.only(
                left: 16.h,
                right: 15.h,
              ),
              child: Text(
                "msg_would_you_like_to".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 27.v),
            CustomElevatedButton(
              text: "1bl_post".tr.toUpperCase(),
            ),
            SizedBox(height: 10.v),
            CustomElevatedButton(
              text: "lbl_make_a_job".tr.toUpperCase(),
              buttonStyle: CustomButtonStyles.fillDeepPurple,
            ),
            SizedBox(height: 5.v),
          ],
        ),
      ),
    );
  }
}

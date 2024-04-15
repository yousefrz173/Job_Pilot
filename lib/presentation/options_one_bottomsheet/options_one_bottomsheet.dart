import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/options_one_controller.dart';

class OptionsOneBottomsheet extends StatelessWidget {
  OptionsOneBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );
  OptionsOneController controller;

  @override
  Widget build(BuildContext context) {
    return _buildScrollView();
  }

  /// Section Widget
  Widget _buildScrollView() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 30.v,
        ),
        decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector56,
              height: 4.v,
              width: 30.h,
              alignment: Alignment.center,
            ),
            SizedBox(height: 46.v),
            Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpBlueGray80002,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 2.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "1bl_delete".tr,
                      style: CustomTextStyles.bodyMediumDMSansBluegray80002,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.v),
            Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpBlueGray8000224x24,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 2.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "msg_turn_off_notifications".tr,
                      style: CustomTextStyles.bodyMediumDMSansBluegray80002,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            CustomElevatedButton(
              text: "1bl_setting".tr,
              leftIcon: Container(
                margin: EdgeInsets.only(right: 15.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              buttonStyle: CustomButtonStyles.fillPrimaryTL15,
              buttonTextStyle:
                  CustomTextStyles.bodyMediumDMSansOnPrimaryContainer,
            ),
            SizedBox(height: 14.v),
          ],
        ),
      ),
    );
  }
}

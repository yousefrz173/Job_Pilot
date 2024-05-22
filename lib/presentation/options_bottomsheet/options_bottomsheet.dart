import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/options_controller.dart';

class OptionsBottomsheet extends StatelessWidget {
  OptionsBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );
  OptionsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 30.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector56Gray700,
            height: 4.v,
            width: 30.h,
            alignment: Alignment.center,
          ),
          SizedBox(height: 46.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSave,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "1b1_send_message".tr,
                    style: CustomTextStyles.bodyMediumDMSansGray90004,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgQuestionBlueGray700,
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
                    "lbl_shared".tr,
                    style: CustomTextStyles.bodyMediumDMSansGray90004,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpBlueGray700,
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
                    "lbl_delete".tr,
                    style: CustomTextStyles.bodyMediumDMSansGray90004,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          CustomElevatedButton(
            text: "lbl_apply".tr,
            margin: EdgeInsets.only(left: 1.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 15.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOnprimarycontainer,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle:
                CustomTextStyles.bodyMediumDMSansOnPrimaryContainer,
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}

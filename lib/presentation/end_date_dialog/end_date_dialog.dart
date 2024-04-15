import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/end_date_controller.dart';

class EndDateDialog extends StatelessWidget {
  EndDateDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );
  EndDateController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 335.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 20.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder21,
          ),
          child: Material(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5.v),
                CustomImageView(
                  imagePath: ImageConstant.imgVector56Gray700,
                  height: 4.v,
                ),
                SizedBox(height: 46.v),
                Text(
                  "1bl_end_date2".tr,
                  style: CustomTextStyles.titleMediumOpenSans,
                ),
                SizedBox(height: 57.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      height: 52.v,
                      width: 30.h,
                      text: "lbl_jul".tr,
                      margin: EdgeInsets.symmetric(vertical: 28.v),
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: theme.textTheme.labelMedium!,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 41.v,
                      ),
                      decoration: AppDecoration.fillorangeA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 5.v),
                          Text(
                            "1b1_aug".tr,
                            style: CustomTextStyles
                                .titleSmallOpenSansOnPrimaryContainer,
                          ),
                        ],
                      ),
                    ),
                    CustomElevatedButton(
                      height: 52.v,
                      width: 30.h,
                      text: "lbl_sep".tr,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 28.v,
                        bottom: 28.v,
                      ),
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: theme.textTheme.labelMedium!,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: SizedBox(
                        height: 108.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: appTheme.gray30002,
                          indent: 18.h,
                          endIndent: 12.h,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 18.h,
                        top: 28.v,
                        bottom: 28.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.h,
                        vertical: 18.v,
                      ),
                      decoration: AppDecoration.fillGray40001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Text(
                        "1b1_2012".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 43.v,
                      ),
                      decoration: AppDecoration.fillorangeA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Text(
                        "1b1_2013".tr,
                        style: CustomTextStyles
                            .titleSmallOpenSansOnPrimaryContainer,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 28.v,
                        bottom: 28.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.h,
                        vertical: 18.v,
                      ),
                      decoration: AppDecoration.fillGray40001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Text(
                        "1b1_2014".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 57.v),
                CustomElevatedButton(
                  text: "lbl_save".tr.toUpperCase(),
                  margin: EdgeInsets.symmetric(horizontal: 29.h),
                ),
                SizedBox(height: 10.v),
                CustomElevatedButton(
                  text: "lbl_cancel".tr.toUpperCase(),
                  margin: EdgeInsets.symmetric(horizontal: 29.h),
                  buttonStyle: CustomButtonStyles.fillDeepPurple,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

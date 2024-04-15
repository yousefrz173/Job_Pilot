import 'package:jobpilot/widgets/custom_radio_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/oral_controller.dart';

class OralDialog extends StatelessWidget {
  OralDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  OralController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 335.h,
          padding: EdgeInsets.all(30.h),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder21,
          ),
          child: Material(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVector56Gray700,
                  height: 4.v,
                  width: 30.h,
                ),
                SizedBox(height: 36.v),
                Obx(
                  () => Column(
                    children: [
                      CustomRadioButton(
                        width: 275.h,
                        text: "lbl_level_0".tr,
                        value: controller.oralModelObj.value.radioList.value[0],
                        groupValue: controller.radioGroup.value,
                        textStyle: theme.textTheme.bodyMedium,
                        isRightCheck: true,
                        onChange: (value) {
                          controller.radioGroup.value = value;
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.v),
                        child: CustomRadioButton(
                          width: 275.h,
                          text: "lbl_level_1".tr,
                          value:
                              controller.oralModelObj.value.radioList.value[1],
                          groupValue: controller.radioGroup.value,
                          textStyle: theme.textTheme.bodyMedium,
                          isRightCheck: true,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.v),
                        child: CustomRadioButton(
                          width: 275.h,
                          text: "lbl_level_2".tr,
                          value:
                              controller.oralModelObj.value.radioList.value[2],
                          groupValue: controller.radioGroup.value,
                          textStyle: theme.textTheme.bodyMedium,
                          isRightCheck: true,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.v),
                        child: CustomRadioButton(
                          width: 275.h,
                          text: "1bl_level_3".tr,
                          value:
                              controller.oralModelObj.value.radioList.value[3],
                          groupValue: controller.radioGroup.value,
                          textStyle: theme.textTheme.bodyMedium,
                          isRightCheck: true,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.v),
                        child: CustomRadioButton(
                          width: 275.h,
                          text: "1bl_level_4".tr,
                          value:
                              controller.oralModelObj.value.radioList.value[4],
                          groupValue: controller.radioGroup.value,
                          textStyle: theme.textTheme.bodyMedium,
                          isRightCheck: true,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.v),
                        child: CustomRadioButton(
                          width: 275.h,
                          text: "lbl_level_5".tr,
                          value:
                              controller.oralModelObj.value.radioList.value[5],
                          groupValue: controller.radioGroup.value,
                          textStyle: theme.textTheme.bodyMedium,
                          isRightCheck: true,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.v),
                        child: CustomRadioButton(
                          width: 275.h,
                          text: "1bl_level_6".tr,
                          value:
                              controller.oralModelObj.value.radioList.value[6],
                          groupValue: controller.radioGroup.value,
                          textStyle: theme.textTheme.bodyMedium,
                          isRightCheck: true,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.v),
                        child: CustomRadioButton(
                          width: 275.h,
                          text: "lbl_level_7".tr,
                          value:
                              controller.oralModelObj.value.radioList.value[7],
                          groupValue: controller.radioGroup.value,
                          textStyle: theme.textTheme.bodyMedium,
                          isRightCheck: true,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.v),
                        child: CustomRadioButton(
                          width: 275.h,
                          text: "lbl_level_8".tr,
                          value:
                              controller.oralModelObj.value.radioList.value[8],
                          groupValue: controller.radioGroup.value,
                          textStyle: theme.textTheme.bodyMedium,
                          isRightCheck: true,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.v),
                        child: CustomRadioButton(
                          width: 275.h,
                          text: "lbl_level_9".tr,
                          value:
                              controller.oralModelObj.value.radioList.value[9],
                          groupValue: controller.radioGroup.value,
                          textStyle: theme.textTheme.bodyMedium,
                          isRightCheck: true,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.v),
                        child: CustomRadioButton(
                          width: 275.h,
                          text: "lbl_level_102".tr,
                          value:
                              controller.oralModelObj.value.radioList.value[10],
                          groupValue: controller.radioGroup.value,
                          textStyle: theme.textTheme.bodyMedium,
                          isRightCheck: true,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 55.v),
                CustomElevatedButton(
                  text: "lbl_done".tr.toUpperCase(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

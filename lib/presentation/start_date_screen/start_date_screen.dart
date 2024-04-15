import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_checkbox_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/start_date_controller.dart'; // ignore_for_file: must_be_immutable

class StartDateScreen extends GetWidget<StartDateController> {
  const StartDateScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCloseGray90003,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        onTap: () {
                          onTapImgClose();
                        },
                      ),
                      SizedBox(height: 41.v),
                      Text(
                        "msg_change_education".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 29.v),
                      Text(
                        "msg_level_of_education".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 10.v),
                      _buildGroup146(),
                      SizedBox(height: 19.v),
                      Text(
                        "msg_institution_name".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 10.v),
                      _buildUniversityOfoxford(),
                      SizedBox(height: 21.v),
                      Text(
                        "1b1_field_of_study".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 9.v),
                      _buildInformationTechnology(),
                      SizedBox(height: 19.v),
                      _buildDate2(),
                      SizedBox(height: 20.v),
                      _buildThisismypositionnow(),
                      SizedBox(height: 21.v),
                      Text(
                        "lbl_description".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 9.v),
                      _buildWriteAdditional(),
                      SizedBox(height: 27.v),
                      _buildButtonRemove()
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50.h,
                    vertical: 185.v,
                  ),
                  decoration: AppDecoration.fillBluegray90001,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 38.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector56Gray700,
                        height: 4.v,
                        width: 30.h,
                      ),
                      SizedBox(height: 46.v),
                      Text(
                        "1b1_end_date2".tr,
                        style: CustomTextStyles.titleMediumOpenSans,
                      ),
                      SizedBox(height: 57.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildJul(),
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
                                  "1bl_aug".tr,
                                  style: CustomTextStyles.titleSmallPrimary_1,
                                )
                              ],
                            ),
                          ),
                          _buildSep(),
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
                          )
                        ],
                      ),
                      SizedBox(height: 57.v),
                      _buildSave1(),
                      SizedBox(height: 10.v),
                      _buildCancel()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup146() {
    return CustomTextFormField(
      controller: controller.group146Controller,
      hintText: "msg_bachelor_of_information".tr,
      hintStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildUniversityOfoxford() {
    return Container(
      width: 335.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineIndigoD.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Text(
        "msg_university_of_oxford".tr,
        style: theme.textTheme.bodySmall,
      ),
    );
  }

  /// Section Widget
  Widget _buildInformationTechnology() {
    return Container(
      width: 335.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineIndigoD.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "msg_information_technology".tr,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDate() {
    return CustomTextFormField(
      width: 160.h,
      controller: controller.dateController,
      hintText: "1bl_sep_2010".tr,
      hintStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildDate1() {
    return CustomTextFormField(
      width: 160.h,
      controller: controller.date1Controller,
      hintText: "1bl_aug_2013".tr,
      hintStyle: theme.textTheme.bodySmall!,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildDate2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_start_date".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 10.v),
                _buildDate()
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1bl_end_date".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 10.v),
                _buildDate1()
              ],
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildThisismypositionnow() {
    return Obx(
      () => CustomCheckboxButton(
        text: "msg_this_is_my_position".tr,
        value: controller.thisismypositionnow.value,
        padding: EdgeInsets.symmetric(vertical: 3.v),
        onChange: (value) {
          controller.thisismypositionnow.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWriteAdditional() {
    return Container(
      width: 335.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineIndigoD.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Text(
        "msg_write_additional".tr,
        style: CustomTextStyles.bodySmallBluegray30003,
      ),
    );
  }

  /// Section Widget
  Widget _buildRemove() {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_remove".tr.toUpperCase(),
        margin: EdgeInsets.only(right: 7.h),
        buttonStyle: CustomButtonStyles.fillDeepPurpleA,
      ),
    );
  }

  /// Section Widget
  Widget _buildSave() {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_save".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 7.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonRemove() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_buildRemove(), _buildSave()],
    );
  }

  /// Section Widget
  Widget _buildJul() {
    return CustomElevatedButton(
      height: 52.v,
      width: 30.h,
      text: "lbl_jul".tr,
      margin: EdgeInsets.symmetric(vertical: 28.v),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.labelMedium!,
    );
  }

  /// Section Widget
  Widget _buildSep() {
    return CustomElevatedButton(
      height: 52.v,
      width: 30.h,
      text: "1bl_sep".tr,
      margin: EdgeInsets.only(
        left: 5.h,
        top: 28.v,
        bottom: 28.v,
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.labelMedium!,
    );
  }

  /// Section Widget
  Widget _buildSave1() {
    return CustomElevatedButton(
      text: "lbl_save".tr.toUpperCase(),
      margin: EdgeInsets.symmetric(horizontal: 29.h),
    );
  }

  /// Section Widget
  Widget _buildCancel() {
    return CustomElevatedButton(
      text: "lbl_cancel".tr.toUpperCase(),
      margin: EdgeInsets.symmetric(horizontal: 29.h),
      buttonStyle: CustomButtonStyles.fillDeepPurple,
    );
  }

  ///Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}

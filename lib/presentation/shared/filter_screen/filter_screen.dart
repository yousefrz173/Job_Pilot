import 'package:jobpilot/widgets/custom_text_form_field.dart';
import '../../../widgets/app_bar/appbar_leading_image.dart';
import '../../../widgets/app_bar/appbar_trailing_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import 'models/seniordesigner2_item_model.dart';
import '../filter_screen/widgets/seniordesigner2_item_widget.dart';
import '../../../widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import 'controller/filter_controller.dart';

// ignore_for_file: must_be_immutable
class FilterScreen extends GetWidget<FilterController> {
  const FilterScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 30.v,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_filter".tr,
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                ),
                SizedBox(height: 49.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "lbl_what_to_show".tr,
                      style: CustomTextStyles.titleSmallOpenSans,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowUp,
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 2.h),
                ),
                SizedBox(height: 5.v),
                _buildDesign(),
                SizedBox(height: 32.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildApplyNow(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      // leadingWidth: 47.h,
      // leading: AppbarLeadingImage(
      //   imagePath: ImageConstant.imgArrowDownGray90002,
      //   margin: EdgeInsets.only(
      //     left: 23.h,
      //     top: 16.v,
      //     bottom: 16.v,
      //   ),
      // ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotificationGray90002,
          margin: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDesign() {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 2.h,
      ),
      child: CustomTextFormField(
        controller: controller.designController,
        hintText: "lbl_design".tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 17.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildUIUXDesign() {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 2.h,
      ),
      child: CustomTextFormField(
        controller: controller.uIUXDesignController,
        hintText: "lbl_ui_ux_design".tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 17.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
        fillColor: appTheme.whiteA700,
      ),
    );
  }

  /// Section Widget
  Widget _buildLocation() {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 2.h,
      ),
      child: CustomTextFormField(
        controller: controller.locationController,
        hintText: "lbl_california".tr,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 17.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
        fillColor: appTheme.whiteA700,
      ),
    );
  }

  /// Section Widget
  Widget _buildMinimumSalary() {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              "lbl_minimum_salary".tr,
              style: CustomTextStyles.bodyMediumDMSansBlack900,
            ),
          ),
          Text(
            "lbl_minimum_salary".tr,
            style: CustomTextStyles.bodyMediumDMSansBlack900,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSalary() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_salary".tr,
            style: CustomTextStyles.titleSmall0penSansff150b3d,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 2.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeniorDesigner() {
    return Obx(
      () => Wrap(
        runSpacing: 9.v,
        spacing: 9.h,
        children: List<Widget>.generate(
          controller.filterModelObj.value.seniordesigner2ItemList.value.length,
          (index) {
            Seniordesigner2ItemModel model = controller
                .filterModelObj.value.seniordesigner2ItemList.value[index];

            return Seniordesigner2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyNow() {
    return CustomElevatedButton(
      width: 245.h,
      text: "lbl_apply_now".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 65.h,
        right: 65.h,
        bottom: 30.v,
      ),
    );
  }
}

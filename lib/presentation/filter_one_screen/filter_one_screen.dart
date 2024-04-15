import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_radio_button.dart';
import 'models/fulltime_item_model.dart';
import '../filter_one_screen/widgets/fulltime_item_widget.dart';
import 'models/fulltime2_item_model.dart';
import '../filter_one_screen/widgets/fulltime2_item_widget.dart';
import 'package:jobpilot/widgets/custom_checkbox_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/filter_one_controller.dart';

// ignore_for_file: must_be_immutable
class FilterOneScreen extends GetWidget<FilterOneController> {
  const FilterOneScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  Text(
                    "1bl_filter".tr,
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                  SizedBox(height: 49.v),
                  _buildTypeOfWorkplace(
                    typeOfWorkplace: "lbl_last_update".tr,
                  ),
                  SizedBox(height: 29.v),
                  _buildLastUpdate1(),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  _buildTypeOfWorkplace(
                    typeOfWorkplace: "msg_type_of_workplace".tr,
                  ),
                  SizedBox(height: 29.v),
                  _buildTypeOfWorkplace2(),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  _buildTypeOfWorkplace(
                    typeOfWorkplace: "msg_type_of_workplace".tr,
                  ),
                  SizedBox(height: 29.v),
                  _buildTypeOfWorkplace2(),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  _buildTypeOfWorkplace(
                    typeOfWorkplace: "lbl_job_type2".tr,
                  ),
                  SizedBox(height: 29.v),
                  _buildFullTime(),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 19.v),
                  _buildTypeOfWorkplace(
                    typeOfWorkplace: "lbl_position_level".tr,
                  ),
                  SizedBox(height: 30.v),
                  _buildFullTime1(),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  _buildTypeOfWorkplace(
                    typeOfWorkplace: "lbl_city".tr,
                  ),
                  SizedBox(height: 29.v),
                  _buildCaliforniaUSA(),
                  SizedBox(height: 20.v),
                  _buildTexazUSA(),
                  SizedBox(height: 20.v),
                  _buildNewYorkUSA(),
                  SizedBox(height: 20.v),
                  _buildFloridaUSA(),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  _buildTypeOfWorkplace(
                    typeOfWorkplace: "lbl_salary".tr,
                  ),
                  SizedBox(height: 33.v),
                  SliderTheme(
                    data: SliderThemeData(
                      trackShape: RoundedRectSliderTrackShape(),
                      activeTrackColor: appTheme.orange400,
                      inactiveTrackColor: appTheme.gray400,
                      thumbColor: theme.colorScheme.onPrimaryContainer,
                      thumbShape: RoundSliderThumbShape(),
                    ),
                    child: RangeSlider(
                      values: RangeValues(
                        0,
                        0,
                      ),
                      min: 0.0,
                      max: 100.0,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 81.h,
                      right: 84.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1b1_13k".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          "1b1_25k".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  _buildTypeOfWorkplace(
                    typeOfWorkplace: "lbl_experience".tr,
                  ),
                  SizedBox(height: 29.v),
                  _buildExperience1(),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 20.v),
                  _buildTypeOfWorkplace(
                    typeOfWorkplace: "lbl_specialization".tr,
                  ),
                  SizedBox(height: 29.v),
                  _buildDesign(),
                  SizedBox(height: 19.v),
                  _buildFinance(),
                  SizedBox(height: 20.v),
                  _buildEducation(),
                  SizedBox(height: 20.v),
                  _buildHealth(),
                  SizedBox(height: 20.v),
                  _buildRestuarant(),
                  SizedBox(height: 20.v),
                  _buildProgrammer(),
                  SizedBox(height: 19.v),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildMenuBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 374.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1BlueGray70001,
        margin: EdgeInsets.fromLTRB(22.h, 28.v, 334.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildLastUpdate1() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 239.h),
        child: Obx(
          () => Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 24.h),
                child: CustomRadioButton(
                  text: "lbl_recent".tr,
                  value: controller.filterOneModelObj.value.radioList.value[0],
                  groupValue: controller.lastUpdate.value,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    controller.lastUpdate.value = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.v,
                  right: 8.h,
                ),
                child: CustomRadioButton(
                  text: "lbl_last_week".tr,
                  value: controller.filterOneModelObj.value.radioList.value[1],
                  groupValue: controller.lastUpdate.value,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    controller.lastUpdate.value = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.v),
                child: CustomRadioButton(
                  text: "lbl_last_month".tr,
                  value: controller.filterOneModelObj.value.radioList.value[2],
                  groupValue: controller.lastUpdate.value,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    controller.lastUpdate.value = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.v,
                  right: 13.h,
                ),
                child: CustomRadioButton(
                  text: "lbl_any_time".tr,
                  value: controller.filterOneModelObj.value.radioList.value[3],
                  groupValue: controller.lastUpdate.value,
                  onChange: (value) {
                    controller.lastUpdate.value = value;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeOfWorkplace2() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 259.h),
        child: Obx(
          () => Column(
            children: [
              CustomRadioButton(
                text: "lbl_on_site".tr,
                value: controller.filterOneModelObj.value.radioList1.value[0],
                groupValue: controller.typeOfWorkplace.value,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  controller.typeOfWorkplace.value = value;
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.v,
                  right: 5.h,
                ),
                child: CustomRadioButton(
                  text: "1b1_hybrid".tr,
                  value: controller.filterOneModelObj.value.radioList1.value[1],
                  groupValue: controller.typeOfWorkplace.value,
                  onChange: (value) {
                    controller.typeOfWorkplace.value = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.v),
                child: CustomRadioButton(
                  text: "lbl_remote".tr,
                  value: controller.filterOneModelObj.value.radioList1.value[2],
                  groupValue: controller.typeOfWorkplace.value,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    controller.typeOfWorkplace.value = value;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullTime() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => Wrap(
          runSpacing: 15.v,
          spacing: 15.h,
          children: List<Widget>.generate(
            controller.filterOneModelObj.value.fulltimeItemList.value.length,
            (index) {
              FulltimeItemModel model = controller
                  .filterOneModelObj.value.fulltimeItemList.value[index];

              return FulltimeItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullTime1() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => Wrap(
          runSpacing: 15.v,
          spacing: 15.h,
          children: List<Widget>.generate(
            controller.filterOneModelObj.value.fulltime2ItemList.value.length,
            (index) {
              Fulltime2ItemModel model = controller
                  .filterOneModelObj.value.fulltime2ItemList.value[index];

              return Fulltime2ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCaliforniaUSA() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "lbl_california_usa".tr,
          value: controller.californiaUSA.value,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            controller.californiaUSA.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTexazUSA() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "lbl_texaz_usa".tr,
          value: controller.texazUSA.value,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            controller.texazUSA.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewYorkUSA() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "1bl_new_york_usa".tr,
          value: controller.newYorkUSA.value,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            controller.newYorkUSA.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloridaUSA() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "lbl_florida_usa".tr,
          value: controller.floridaUSA.value,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            controller.floridaUSA.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExperience1() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 197.h),
        child: Obx(
          () => Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 24.h),
                child: CustomRadioButton(
                  text: "1bl_no_experience".tr,
                  value: controller.filterOneModelObj.value.radioList2.value[0],
                  groupValue: controller.experience.value,
                  onChange: (value) {
                    controller.experience.value = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.v,
                  right: 15.h,
                ),
                child: CustomRadioButton(
                  text: "msg_less_than_a_year".tr,
                  value: controller.filterOneModelObj.value.radioList2.value[1],
                  groupValue: controller.experience.value,
                  onChange: (value) {
                    controller.experience.value = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.v,
                  right: 55.h,
                ),
                child: CustomRadioButton(
                  text: "lb1_1_3_years".tr,
                  value: controller.filterOneModelObj.value.radioList2.value[2],
                  groupValue: controller.experience.value,
                  onChange: (value) {
                    controller.experience.value = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 19.v,
                  right: 51.h,
                ),
                child: CustomRadioButton(
                  text: "1b1_3_5_years".tr,
                  value: controller.filterOneModelObj.value.radioList2.value[3],
                  groupValue: controller.experience.value,
                  onChange: (value) {
                    controller.experience.value = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 19.v,
                  right: 46.h,
                ),
                child: CustomRadioButton(
                  text: "lb1_5_10_years".tr,
                  value: controller.filterOneModelObj.value.radioList2.value[4],
                  groupValue: controller.experience.value,
                  onChange: (value) {
                    controller.experience.value = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 19.v),
                child: CustomRadioButton(
                  text: "msg_more_than_10_years".tr,
                  value: controller.filterOneModelObj.value.radioList2.value[5],
                  groupValue: controller.experience.value,
                  onChange: (value) {
                    controller.experience.value = value;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDesign() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "1bl_design".tr,
          value: controller.design.value,
          onChange: (value) {
            controller.design.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFinance() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "lbl_finance".tr,
          value: controller.finance.value,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            controller.finance.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEducation() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "lbl_education".tr,
          value: controller.education.value,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            controller.education.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHealth() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "lbl_health".tr,
          value: controller.health.value,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            controller.health.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRestuarant() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "lbl_restuarant".tr,
          value: controller.restuarant.value,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            controller.restuarant.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProgrammer() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "lbl_programmer".tr,
          value: controller.programmer.value,
          onChange: (value) {
            controller.programmer.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuBar() {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 14.v,
      ),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomElevatedButton(
            width: 75.h,
            text: "lbl_reset".tr,
            buttonStyle: CustomButtonStyles.outlineBlueGrayTL15,
            buttonTextStyle: CustomTextStyles.bodyLargeOpenSansOrange400,
          ),
          Expanded(
            child: CustomElevatedButton(
              text: "1bl_apply_now".tr.toUpperCase(),
              margin: EdgeInsets.only(left: 15.h),
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTypeOfWorkplace({required String typeOfWorkplace}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          typeOfWorkplace,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray90004,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowUp,
          height: 10.adaptSize,
          width: 10.adaptSize,
          margin: EdgeInsets.only(top: 8.v),
        ),
      ],
    );
  }
}

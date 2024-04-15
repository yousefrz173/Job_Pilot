import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_radio_button.dart';
import 'package:jobpilot/widgets/custom_phone_number.dart';
import 'package:country_pickers/country.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/my_profile_vone_controller.dart';

// ignore_for_file: must_be_immutable
class MyProfileVoneScreen extends GetWidget<MyProfileVoneController> {
  const MyProfileVoneScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSixtyThree(),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "1bl_fullname2".tr,
                  style: CustomTextStyles.labelLargeGray90003,
                ),
              ),
              SizedBox(height: 10.v),
              _buildFullName(),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "1bl_date_of_birth".tr,
                  style: CustomTextStyles.labelLargeGray90003,
                ),
              ),
              SizedBox(height: 10.v),
              _buildDate(),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "1bl_gender".tr,
                  style: CustomTextStyles.labelLargeGray90003,
                ),
              ),
              SizedBox(height: 10.v),
              _buildGender(),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_email_address".tr,
                  style: CustomTextStyles.labelLargeGray90003,
                ),
              ),
              SizedBox(height: 10.v),
              _buildEmail(),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "1bl_phone_number".tr,
                  style: CustomTextStyles.labelLargeGray90003,
                ),
              ),
              SizedBox(height: 10.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildPhoneNumber(),
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "1bl_location".tr,
                  style: CustomTextStyles.labelLargeGray90003,
                ),
              ),
              SizedBox(height: 10.v),
              _buildLocation(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSave(),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditProfile() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: CustomTextFormField(
        width: 120.h,
        controller: controller.editProfileController,
        hintText: "lbl_change_image".tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 7.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyThree() {
    return Container(
      padding: EdgeInsets.all(23.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup77,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage60x60,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
                  margin: EdgeInsets.only(top: 17.v),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 53.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgQuestionOnprimarycontainer,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSearch,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 15.h),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_orlando_diggs".tr,
              style: CustomTextStyles.titleSmallOnPrimaryContainerMedium,
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_california_usa".tr,
              style: CustomTextStyles.bodySmallOnPrimaryContainer,
            ),
          ),
          SizedBox(height: 19.v),
          _buildEditProfile(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: CustomTextFormField(
        controller: controller.fullNameController,
        hintText: "lbl_brandone_louis".tr,
        hintStyle: theme.textTheme.bodySmall!,
        alignment: Alignment.center,
      ),
    );
  }

  /// Section Widget
  Widget _buildDate() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.outlineIndigoD.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 2.v,
              ),
              child: Text(
                "1b1_06_august_1992".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgThumbsUpGray90004,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGender() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Obx(
          () => Row(
            children: [
              CustomRadioButton(
                text: "1bl_male".tr,
                value:
                    controller.myProfileVoneModelObj.value.radioList.value[0],
                groupValue: controller.gender.value,
                padding: EdgeInsets.fromLTRB(10.h, 11.v, 30.h, 11.v),
                onChange: (value) {
                  controller.gender.value = value;
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: CustomRadioButton(
                  text: "lbl_female".tr,
                  value:
                      controller.myProfileVoneModelObj.value.radioList.value[1],
                  groupValue: controller.gender.value,
                  padding: EdgeInsets.fromLTRB(10.h, 11.v, 30.h, 11.v),
                  onChange: (value) {
                    controller.gender.value = value;
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
  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: CustomTextFormField(
        controller: controller.emailController,
        hintText: "msg_brandonelouis_gmail_com".tr,
        hintStyle: theme.textTheme.bodySmall!,
        alignment: Alignment.center,
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => CustomPhoneNumber(
          country: controller.selectedCountry.value,
          controller: controller.phoneNumberController,
          onTap: (Country value) {
            controller.selectedCountry.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocation() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: CustomTextFormField(
        controller: controller.locationController,
        hintText: "msg_california_united2".tr,
        hintStyle: theme.textTheme.bodySmall!,
        textInputAction: TextInputAction.done,
        alignment: Alignment.center,
      ),
    );
  }

  ///Section Widget
  Widget _buildSave() {
    return CustomElevatedButton(
      width: 213.h,
      text: "1bl_save".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 81.h,
        right: 81.h,
        bottom: 20.v,
      ),
    );
  }
}

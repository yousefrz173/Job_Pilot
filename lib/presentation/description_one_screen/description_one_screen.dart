import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/description_one_controller.dart';

// ignore_for_file: must_be_immutable
class DescriptionOneScreen extends GetWidget<DescriptionOneController> {
  DescriptionOneScreen({Key? key})
      : super(
          key: key,
        );
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFortySeven(),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      right: 62.h,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "lbl_salary".tr,
                          style: CustomTextStyles.bodyMediumDMSansGray90002,
                        ),
                        Spacer(
                          flex: 66,
                        ),
                        Text(
                          "1b1_job_type".tr,
                          style: CustomTextStyles.bodyMediumDMSansGray90002,
                        ),
                        Spacer(
                          flex: 33,
                        ),
                        Text(
                          "lbl_postion".tr,
                          style: CustomTextStyles.bodyMediumDMSansGray90002,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "1b1_job_description".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Container(
                    width: 320.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      right: 34.h,
                    ),
                    child: Text(
                      "msg_sed_ut_perspiciatis".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildReadMore(),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_requirements".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 58.h,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 6.v),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray70001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "msg_sed_ut_perspiciatis2".tr,
                            style: CustomTextStyles.bodySmall0penSans,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  _buildNine(),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 74.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 24.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray70001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 264.h,
                            margin: EdgeInsets.only(left: 11.h),
                            child: Text(
                              "msg_nemo_enim_ipsam".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmall0penSans,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.v),
                  _buildTen(),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_location".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_overlook_avenue".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildMap(),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_informations".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lb1_position".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  _buildSeniorDesigner(),
                  Align(
                    alignment: Alignment.center,
                    child: Divider(
                      indent: 20.h,
                      endIndent: 20.h,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_qualification".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  _buildBachelorsDegree(),
                  Align(
                    alignment: Alignment.center,
                    child: Divider(
                      indent: 20.h,
                      endIndent: 20.h,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_experience".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "1b1_3_years".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.center,
                    child: Divider(
                      indent: 20.h,
                      endIndent: 20.h,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_job_type".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_full_time3".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.center,
                    child: Divider(
                      indent: 20.h,
                      endIndent: 20.h,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_specialization".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  _buildDesign(),
                  Align(
                    alignment: Alignment.center,
                    child: Divider(
                      indent: 20.h,
                      endIndent: 20.h,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_facilities_and_others".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Row(
                      children: [
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.only(
                            top: 7.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray70001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "1b1_medical".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Row(
                      children: [
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.only(
                            top: 7.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray70001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "lbl_dental".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Row(
                      children: [
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.only(
                            top: 7.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray70001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "msg_technical_cartification".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Row(
                      children: [
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.only(
                            top: 7.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray70001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "lbl_meal_allowance".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Row(
                      children: [
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 6.v),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray70001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "msg_transport_allowance".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Row(
                      children: [
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.only(
                            top: 5.v,
                            bottom: 6.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray70001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "lbl_regular_hours".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Row(
                      children: [
                        Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 6.v),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray70001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "1b1_mondays_fridays".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildApplyNow(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: Container(
        height: 24.adaptSize,
        width: 24.adaptSize,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 16.v,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFortySeven() {
    return SizedBox(
      height: 177.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 29.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.fillGray10001,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 16.v),
                  Text(
                    "lbl_ui_ux_designer".tr,
                    style: CustomTextStyles.titleMediumGray90002,
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "1b1_google".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                        Container(
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.only(
                            left: 22.h,
                            top: 9.v,
                            bottom: 6.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray90002,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 50,
                        ),
                        Text(
                          "lbl_california".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                        Spacer(
                          flex: 50,
                        ),
                        Container(
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.only(
                            top: 9.v,
                            bottom: 6.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray90002,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "1b1_1_day_ago".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 84.adaptSize,
              width: 84.adaptSize,
              padding: EdgeInsets.all(14.h),
              decoration: AppDecoration.fillLightBlue.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder41,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgGoogle220x15,
                height: 54.adaptSize,
                width: 54.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReadMore() {
    return CustomElevatedButton(
      height: 30.v,
      width: 91.h,
      text: "lbl_read_more".tr,
      margin: EdgeInsets.only(left: 20.h),
      buttonStyle: CustomButtonStyles.fillOnPrimary,
      buttonTextStyle: CustomTextStyles.bodySmall0penSansGray90002,
    );
  }

  /// Section Widget
  Widget _buildNine() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 48.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4.adaptSize,
            width: 4.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 25.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.blueGray70001,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 290.h,
              margin: EdgeInsets.only(left: 11.h),
              child: Text(
                "msg_neque_porro_quisquam".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmall0penSans,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTen() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 34.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4.adaptSize,
            width: 4.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 40.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.blueGray70001,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 304.h,
              margin: EdgeInsets.only(left: 11.h),
              child: Text(
                "msg_ut_enim_ad_minima".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmall0penSans,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap() {
    return SizedBox(
      height: 151.v,
      width: 333.h,
      child: GoogleMap(
//TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildSeniorDesigner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: CustomTextFormField(
        controller: controller.seniorDesignerController,
        hintText: "lbl_senior_designer2".tr,
        hintStyle: theme.textTheme.bodySmall!,
        alignment: Alignment.center,
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildBachelorsDegree() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: CustomTextFormField(
        controller: controller.bachelorsDegreeController,
        hintText: "msg_bachelor_s_degree".tr,
        hintStyle: theme.textTheme.bodySmall!,
        alignment: Alignment.center,
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildDesign() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: CustomTextFormField(
        controller: controller.designController,
        hintText: "lbl_design".tr,
        hintStyle: theme.textTheme.bodySmall!,
        textInputAction: TextInputAction.done,
        alignment: Alignment.center,
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyNow() {
    return CustomElevatedButton(
      text: "lbl_apply_now".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 52.h,
        right: 53.h,
        bottom: 28.v,
      ),
    );
  }
}

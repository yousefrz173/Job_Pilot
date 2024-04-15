import 'package:flutter/material.dart';
import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/company_controller.dart'; // ignore_for_file: must_be_immutable

class CompanyScreen extends GetWidget<CompanyController> {
  const CompanyScreen({Key? key})
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFortySeven(),
                SizedBox(height: 5.v),
                _buildDescription1(),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "1bl_about_company".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 19.v),
                Container(
                  width: 320.h,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    right: 34.h,
                  ),
                  child: Text(
                    "msg_sed_ut_perspiciatis3".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 13.v),
                Container(
                  width: 305.h,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    right: 49.h,
                  ),
                  child: Text(
                    "msg_at_vero_eos_et_accusamus".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 13.v),
                Container(
                  width: 318.h,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    right: 36.h,
                  ),
                  child: Text(
                    "msg_nor_again_is_there".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "1bl_website".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 6.v),
                GestureDetector(
                  onTap: () {
                    onTapTxtWeburl();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_https_www_google_com".tr,
                      style: CustomTextStyles.bodySmallOnPrimary,
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_industry".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "msg_internet_product".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "1b1_employee_size".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "msg_132_121_employees".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 18.v),
                _buildApplyNow1(),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_since".tr,
                    style: CustomTextStyles.titleSmallOpenSans,
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "1b1_1998".tr,
                    style: CustomTextStyles.bodySmall0penSans,
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "1bl_specialization".tr,
                    style: CustomTextStyles.titleSmallOpenSans,
                  ),
                ),
                SizedBox(height: 5.v),
                Container(
                  width: 279.h,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    right: 76.h,
                  ),
                  child: Text(
                    "msg_search_technology".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall0penSans,
                  ),
                ),
                SizedBox(height: 20.v),
                _buildPictures1()
              ],
            ),
          ),
        ),
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
            )
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
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildFortySeven() {
    return SizedBox(
      height: 177.v,
      width: double.maxFinite,
      child: Stack(alignment: Alignment.topCenter, children: [
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
                        "lb1_google".tr,
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
                              "lb1_google".tr,
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
                            )
                          ],
                        ),
                      )
                    ],
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
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  /// Section Widget
  Widget _buildDescription() {
    return CustomElevatedButton(
      height: 40.v,
      width: 162.h,
      text: "lbl_description".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer_2,
    );
  }

  /// Section Widget
  Widget _buildCompany() {
    return CustomElevatedButton(
      height: 40.v,
      width: 162.h,
      text: "1bl_company".tr,
      margin: EdgeInsets.only(left: 14.h),
      buttonStyle: CustomButtonStyles.fillDeepPurple,
      buttonTextStyle: CustomTextStyles.titleSmallPrimary,
    );
  }

  /// Section Widget
  Widget _buildDescription1() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_buildDescription(), _buildCompany()],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyNow() {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_apply_now".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 15.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyNow1() {
    return SizedBox(
      height: 97.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 117.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1bl_head_office".tr,
                    style: CustomTextStyles.titleSmallOpenSans,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_mountain_view_california".tr,
                    style: CustomTextStyles.bodySmall0penSans,
                  ),
                  SizedBox(height: 20.v),
                  Text(
                    "1bl_type".tr,
                    style: CustomTextStyles.titleSmallOpenSans,
                  ),
                  Text(
                    "msg_multinational_company".tr,
                    style: CustomTextStyles.bodySmall0penSans,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                top: 11.v,
                bottom: 7.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.outlineBlueGray,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    padding: EdgeInsets.all(13.h),
                    decoration: IconButtonStyleHelper.outlineBlueGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBookmarkOrangeA20001,
                    ),
                  ),
                  _buildApplyNow()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPictures() {
    return CustomElevatedButton(
      height: 54.v,
      width: 102.h,
      text: "1b1_5_pictures".tr,
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.labelLargeOpenSansOnPrimaryContainer,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildPictures1() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1b1_company_gallery".tr,
                  style: CustomTextStyles.titleSmallOpenSans,
                ),
                SizedBox(height: 20.v),
                CustomImageView(
                  imagePath: ImageConstant.imgUnsplashGmsnxqiljp4,
                  height: 118.v,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 39.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUnsplashUevezouyhgw,
                    height: 54.v,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    height: 54.v,
                    width: 102.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUnsplashWd1lrb9oeeo,
                          height: 54.v,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        _buildPictures()
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  onTapTxtWeburl() {
//TODO: implement Actions
  }
}

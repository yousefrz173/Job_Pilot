import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/chat_controller.dart';

// ignore_for_file: must_be_immutable
class ChatScreen extends GetWidget<ChatController> {
  const ChatScreen({Key? key})
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
            children: [
              _buildSixtySix(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 15.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1bl_today".tr,
                        style: CustomTextStyles.bodySmallBluegray30003,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    _buildSixtyNine(
                      image: ImageConstant.imgRectangle95,
                      morningCanIHelp: "msg_hello_sir_good".tr,
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "1b1_09_30_am".tr,
                          style: CustomTextStyles.bodySmallBluegray3000310,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 10.v,
                          margin: EdgeInsets.only(
                            left: 3.h,
                            top: 2.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(right: 98.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse49,
                              height: 35.adaptSize,
                              width: 35.adaptSize,
                              radius: BorderRadius.circular(
                                17.h,
                              ),
                              margin: EdgeInsets.only(top: 13.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: _buildSixtyNine(
                                image: ImageConstant.imgRectangle98,
                                morningCanIHelp: "msg_morning_can_i_help".tr,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 45.h),
                        child: Text(
                          "1b1_09_31_am".tr,
                          style: CustomTextStyles.bodySmallBluegray3000310,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      margin: EdgeInsets.only(left: 74.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 14.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgRectangle95,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: SizedBox(
                        width: 227.h,
                        child: Text(
                          "msg_i_saw_the_ui_ux2".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles
                              .bodyMediumDMSansOnPrimaryContainer13
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    _buildTime(
                      time: "1b1_09_33_am".tr,
                      checkmark: ImageConstant.imgCheckmark,
                    ),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(right: 98.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse49,
                              height: 35.adaptSize,
                              width: 35.adaptSize,
                              radius: BorderRadius.circular(
                                17.h,
                              ),
                              margin: EdgeInsets.only(
                                top: 31.v,
                                bottom: 18.v,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20.h,
                                        vertical: 10.v,
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: fs.Svg(
                                            ImageConstant.imgRectangle98,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 3.v),
                                          Container(
                                            width: 150.h,
                                            margin: EdgeInsets.only(right: 1.h),
                                            child: Text(
                                              "msg_oh_yes_please_send2".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyMediumDMSans13
                                                  .copyWith(
                                                height: 1.50,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      "1b1_09_35_am".tr,
                                      style: CustomTextStyles
                                          .bodySmallBluegray3000310,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 44.v,
                            width: 33.h,
                            margin: EdgeInsets.only(
                              left: 10.h,
                              top: 5.v,
                              bottom: 5.v,
                            ),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgUserRed700,
                                  width: 33.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgContrastRed300,
                                          width: 12.h,
                                          alignment: Alignment.centerRight,
                                        ),
                                        SizedBox(height: 10.v),
                                        Text(
                                          "1bl_pdf".tr,
                                          style: CustomTextStyles
                                              .labelMediumExtraBold,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              top: 5.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 90.h,
                                  child: Text(
                                    "msg_jamet_cv_ui_ux".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodySmallOnPrimaryContainer,
                                  ),
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "1b1_867_kb_pdf".tr,
                                  style:
                                      CustomTextStyles.bodySmallBluegray10001,
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgNotification,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              left: 22.h,
                              top: 16.v,
                              bottom: 15.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    _buildTime(
                      time: "1b1_09_33_am".tr,
                      checkmark: ImageConstant.imgCheckmarkBlueGray40001,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildSendMassage(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtySix() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.outlineIndigoD,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 15.v),
          CustomAppBar(
            height: 24.v,
            leadingWidth: 44.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDownBlueGray70001,
              margin: EdgeInsets.only(left: 20.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgNotificationGray700,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
              ),
            ],
          ),
          SizedBox(height: 37.v),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage50x50,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_orlando_diggs".tr,
                        style: CustomTextStyles.titleSmallErrorContainer,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 5.adaptSize,
                            width: 5.adaptSize,
                            margin: EdgeInsets.only(
                              top: 5.v,
                              bottom: 4.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.green500,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "1bl_online".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgCall,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    bottom: 16.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRewindOrange400,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 9.v,
                    bottom: 17.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSendMassage() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 25.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: controller.attachController,
              hintText: "msg_write_your_massage".tr,
              hintStyle: CustomTextStyles.bodySmallBluegray30003,
              textInputAction: TextInputAction.done,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(15.h, 13.v, 20.h, 13.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgAttach,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 50.v,
              ),
              contentPadding: EdgeInsets.only(
                top: 17.v,
                right: 30.h,
                bottom: 17.v,
              ),
              borderDecoration:
                  TextFormFieldStyleHelper.fillOnPrimaryContainerTL10,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.outlineIndigoD,
              child: CustomImageView(
                imagePath: ImageConstant.imgUserOnprimarycontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSixtyNine({
    required String image,
    required String morningCanIHelp,
  }) {
    return SizedBox(
      height: 48.v,
      width: 192.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.1,
            child: CustomImageView(
              imagePath: image,
              height: 48.v,
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              morningCanIHelp,
              style: CustomTextStyles.bodyMediumDMSans13.copyWith(
                color: appTheme.blueGray70001,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTime({
    required String time,
    required String checkmark,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          time,
          style: CustomTextStyles.bodySmall0penSansBluegray30003.copyWith(
            color: appTheme.blueGray30003,
          ),
        ),
        CustomImageView(
          imagePath: checkmark,
          height: 9.v,
          margin: EdgeInsets.only(
            left: 5.h,
            bottom: 3.v,
          ),
        ),
      ],
    );
  }
}

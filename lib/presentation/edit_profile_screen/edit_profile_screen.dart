import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:jobpilot/presentation/posting_page/posting_page.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'models/leadership_item_model.dart';
import '../edit_profile_screen/widgets/leadership_item_widget.dart';
import 'models/thirtythree_item_model.dart';
import '../edit_profile_screen/widgets/thirtythree_item_widget.dart';
import 'package:jobpilot/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/edit_profile_controller.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  const EditProfileScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildSixtyThree(),
                  SizedBox(height: 20.v),
                  _buildAboutMe(),
                  SizedBox(height: 16.v),
                  _buildWorkExperience(),
                  SizedBox(height: 15.v),
                  _buildEducation(),
                  SizedBox(height: 15.v),
                  _buildskill(),
                  SizedBox(height: 15.v),
                  _buildLanguage(),
                  SizedBox(height: 15.v),
                  _buildAppreciation(),
                  SizedBox(height: 15.v),
                  _buildResume(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyThree() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 21.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup77,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 10.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 17.v),
                  child: Column(
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
                      SizedBox(height: 13.v),
                      Text(
                        "lbl_orlando_diggs".tr,
                        style:
                            CustomTextStyles.titleSmallOnPrimaryContainerMedium,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "lbl_california_usa".tr,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 92.v),
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
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 7.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_120k".tr,
                          style: CustomTextStyles.titleSmallffffffff,
                        ),
                        TextSpan(
                          text: "lbl_follower".tr,
                          style: CustomTextStyles.bodySmallffffffff,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 21.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_23k".tr,
                          style: CustomTextStyles.titleSmallffffffff,
                        ),
                        TextSpan(
                          text: "lbl_following".tr,
                          style: CustomTextStyles.bodySmallffffffff,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  height: 30.v,
                  width: 120.h,
                  text: "lbl_edit_profile".tr,
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEditOnprimarycontainer,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                  buttonTextStyle: CustomTextStyles.bodySmallOnPrimaryContainer,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAboutMe() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          _buildClose(
            close: ImageConstant.imgSettingsOrange400,
            skill: "lbl_about_me".tr,
          ),
          SizedBox(height: 20.v),
          Divider(
            color: appTheme.gray30001,
          ),
          SizedBox(height: 19.v),
          Container(
            width: 263.h,
            margin: EdgeInsets.only(right: 31.h),
            child: Text(
              "msg_lorem_ipsum_dolor3".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumDMSans,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWorkExperience() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 5.v),
          _buildSettings(
            settings: ImageConstant.imgThumbsUpOrange40024x24,
            education: "lbl_work_experience".tr,
          ),
          SizedBox(height: 20.v),
          Column(
            children: [
              Divider(
                color: appTheme.gray30001,
              ),
              SizedBox(height: 19.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_manager".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "lbl_amazon_inc".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 162.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_jan_2015_feb_2022".tr,
                                style: CustomTextStyles.bodySmall0penSans,
                              ),
                              Container(
                                height: 2.adaptSize,
                                width: 2.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 8.v,
                                  bottom: 7.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray70001,
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                              Text(
                                "lbl_5_years".tr,
                                style: CustomTextStyles.bodySmall0penSans,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEdit,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 44.v),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEducation() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          _buildSettings(
            settings: ImageConstant.imgSettingsOrange40026x24,
            education: "lbl_education".tr,
          ),
          SizedBox(height: 20.v),
          Column(
            children: [
              Divider(
                color: appTheme.gray30001,
              ),
              SizedBox(height: 19.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_information_technology".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "msg_university_of_oxford".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 4.v),
                        SizedBox(
                          width: 167.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "msg_sep_2010_aug_2013".tr,
                                  style: CustomTextStyles.bodySmall0penSans,
                                ),
                              ),
                              Container(
                                height: 2.adaptSize,
                                width: 2.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 8.v,
                                  bottom: 7.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray70001,
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                              Text(
                                "lbl_5_years".tr,
                                style: CustomTextStyles.bodySmall0penSans,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEdit,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 44.v),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildskill() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          _buildClose(
            close: ImageConstant.imgClose24x24,
            skill: "lbl_skill".tr,
          ),
          SizedBox(height: 20.v),
          Divider(
            color: appTheme.gray30001,
          ),
          SizedBox(height: 19.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Obx(
              () => Wrap(
                runSpacing: 10.v,
                spacing: 10.h,
                children: List<Widget>.generate(
                  controller.editProfileModelObj.value.leadershipItemList.value
                      .length,
                  (index) {
                    LeadershipItemModel model = controller.editProfileModelObj
                        .value.leadershipItemList.value[index];

                    return LeadershipItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 29.v),
          Text(
            "lbl_see_more".tr,
            style: CustomTextStyles.bodySmallOnPrimary,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguage() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                Container(
                  height: 19.v,
                  width: 17.h,
                  margin: EdgeInsets.only(bottom: 2.v),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgAirplane,
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                        radius: BorderRadius.circular(
                          1.h,
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCursor,
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                        radius: BorderRadius.circular(
                          1.h,
                        ),
                        alignment: Alignment.bottomRight,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 1.h,
                            right: 2.h,
                          ),
                          padding: EdgeInsets.all(1.h),
                          decoration: AppDecoration.outlineOrange.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgStar19x9,
                            height: 9.adaptSize,
                            width: 9.adaptSize,
                            radius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "lbl_language".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgEdit,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Divider(
            color: appTheme.gray30001,
          ),
          SizedBox(height: 19.v),
          Obx(
            () => Wrap(
              runSpacing: 10.v,
              spacing: 10.h,
              children: List<Widget>.generate(
                controller
                    .editProfileModelObj.value.thirtythreeItemList.value.length,
                (index) {
                  ThirtythreeItemModel model = controller.editProfileModelObj
                      .value.thirtythreeItemList.value[index];
                  return ThirtythreeItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAppreciation() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          SizedBox(
            height: 24.v,
            width: 293.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 2.v,
                      right: 282.h,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 1.h),
                    decoration: AppDecoration.outlineOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder3,
                    ),
                    child: Text(
                      "lbl_a".tr,
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle166,
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    bottom: 4.v,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 11.adaptSize,
                    width: 11.adaptSize,
                    margin: EdgeInsets.only(
                      left: 9.h,
                      bottom: 2.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                      border: Border.all(
                        color: appTheme.orange400,
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle167,
                          height: 5.adaptSize,
                          width: 5.adaptSize,
                          margin: EdgeInsets.only(
                            top: 4.v,
                            bottom: 15.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 14.h,
                            top: 3.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_appreciation".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClose1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Divider(
            color: appTheme.gray30001,
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 75.v,
                width: 188.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorOrange400,
                      width: 5.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 14.h,
                        top: 6.v,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_wireless_symposium".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "lbl_young_scientist".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "lbl_2014".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 41.v),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildResume() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 89.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUser24x24,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Text(
                        "lbl_resume".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgClose1,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Divider(
            color: appTheme.gray30001,
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 44.v,
                width: 33.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUserRedA20003,
                      width: 33.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgContrast,
                              width: 12.h,
                              alignment: Alignment.centerRight,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_pdf".tr,
                              style: CustomTextStyles.labelMediumExtraBold,
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
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_jamet_kudasi_cv".tr,
                      style: CustomTextStyles.bodySmallGray90004,
                    ),
                    SizedBox(height: 3.v),
                    Row(
                      children: [
                        Text(
                          "lbl_867_kb".tr,
                          style: CustomTextStyles.bodySmallBluegray400,
                        ),
                        Container(
                          height: 2.adaptSize,
                          width: 2.adaptSize,
                          margin: EdgeInsets.only(
                            left: 5.h,
                            top: 9.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray400,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "msg_14_feb_2022_at_11_30".tr,
                            style: CustomTextStyles.bodySmallBluegray400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 7.v,
                  bottom: 13.v,
                ),
                onTap: () => print('hello'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildSettings({
    required String settings,
    required String education,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: settings,
          width: 24.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 4.v,
            bottom: 3.v,
          ),
          child: Text(
            education,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.gray90004,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgClose1,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildClose({
    required String close,
    required String skill,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: close,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            bottom: 3.v,
          ),
          child: Text(
            skill,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.gray90004,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homebluegray30005:
        return AppRoutes.postingPage;
      case BottomBarEnum.Settings:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Bookmarkbluegray30006:
        return "/";
      case BottomBarEnum.Bookmarkbluegray3000624x24:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.postingPage:
        return PostingPage();
      default:
        return DefaultWidget();
    }
  }
}

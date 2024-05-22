import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/level_of_education_controller.dart';

// ignore_for_file: must_be_immutable
class LevelOfEducationScreen extends GetWidget<LevelOfEducationController> {
  const LevelOfEducationScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 23.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_level_of_education2".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 31.v),
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_bachelor".tr,
              ),
              SizedBox(height: 40.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_bachelor_of_electronic".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 30.v),
                  Text(
                    "msg_bachelor_of_information".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "msg_economics_bachelor".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 28.v),
                  Container(
                    width: 281.h,
                    margin: EdgeInsets.only(right: 53.h),
                    child: Text(
                      "msg_bachelor_of_arts".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Text(
                    "msg_bachelor_of_science".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 30.v),
                  Text(
                    "msg_bachelors_of_science".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 29.v),
                  Container(
                    width: 285.h,
                    margin: EdgeInsets.only(right: 49.h),
                    child: Text(
                      "msg_bachelor_of_engineering".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 28.v),
                  Text(
                    "msg_bachelor_of_busines".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 31.v),
                  Text(
                    "msg_bachelors_of_science".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 28.v),
                  Text(
                    "msg_bachelors_of_business".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
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
}

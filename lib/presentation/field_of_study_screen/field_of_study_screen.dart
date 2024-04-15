import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/field_of_study_controller.dart';

// ignore_for_file: must_be_immutable
class FieldOfStudyScreen extends GetWidget<FieldOfStudyController> {
  const FieldOfStudyScreen({Key? key})
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
            vertical: 25.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_field_of_study".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 29.v),
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_information".tr,
              ),
              SizedBox(height: 41.v),
              Text(
                "msg_information_technology".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 29.v),
              Text(
                "msg_business_information".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_computer_information".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_computer_information2".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_healt_information".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 29.v),
              Text(
                "msg_history_and_information".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 28.v),
              Text(
                "msg_information_assurance".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 31.v),
              Text(
                "msg_information_security".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_information_systems".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_information_systems2".tr,
                style: theme.textTheme.bodySmall,
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

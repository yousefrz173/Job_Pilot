import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/location_controller.dart';

// ignore_for_file: must_be_immutable
class LocationScreen extends GetWidget<LocationController> {
  const LocationScreen({Key? key})
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
                "1bl_location".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 31.v),
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_cali".tr,
              ),
              SizedBox(height: 40.v),
              Text(
                "msg_califon_united".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_california_united".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_california_city".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  ///Section Widget
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

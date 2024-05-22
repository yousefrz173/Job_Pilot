import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/job_position_controller.dart';

// ignore_for_file: must_be_immutable
class JobPositionScreen extends GetWidget<JobPositionController> {
  const JobPositionScreen({Key? key})
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
                "lbl_job_position2".tr,
                style: CustomTextStyles.titleMediumGray90001,
              ),
              SizedBox(height: 31.v),
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_search".tr,
              ),
              SizedBox(height: 39.v),
              Text(
                "lbl_assistant".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "lbl_associate".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_administrative_assistant".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 31.v),
              Text(
                "lbl_account_manager".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 29.v),
              Text(
                "msg_assistant_manager".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 28.v),
              Text(
                "msg_commission_sales".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "lbl_sales_attendant".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "lbl_accountant".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 29.v),
              Text(
                "lbl_sales_advocate".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 31.v),
              Text(
                "lbl_analyst".tr,
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

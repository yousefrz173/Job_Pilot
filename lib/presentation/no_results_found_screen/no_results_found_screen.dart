import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/no_results_found_controller.dart';

// ignore_for_file: must_be_immutable
class NoResultsFoundScreen extends GetWidget<NoResultsFoundController> {
  const NoResultsFoundScreen({Key? key})
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
            vertical: 18.v,
          ),
          child: Column(
            children: [
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_design".tr,
                hintStyle: CustomTextStyles.bodySmallOpenSansGray60002,
                contentPadding: EdgeInsets.only(
                  top: 11.v,
                  right: 30.h,
                  bottom: 11.v,
                ),
              ),
              Spacer(
                flex: 46,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIllustrasi,
                height: 176.v,
                width: 156.h,
              ),
              SizedBox(height: 59.v),
              Text(
                "msg_no_results_found".tr,
                style: CustomTextStyles.titleMediumOpenSans,
              ),
              SizedBox(height: 20.v),
              Container(
                width: 249.h,
                margin: EdgeInsets.symmetric(horizontal: 42.h),
                child: Text(
                  "msg_the_search_could".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmall0penSans,
                ),
              ),
              Spacer(
                flex: 53,
              ),
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

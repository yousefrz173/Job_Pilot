import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/no_notifications_controller.dart';

// ignore_for_file: must_be_immutable
class NoNotificationsScreen extends GetWidget<NoNotificationsController> {
  const NoNotificationsScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 58.h,
            top: 110.v,
            right: 58.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "msg_no_notifications".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 21.v),
              Container(
                width: 204.h,
                margin: EdgeInsets.only(
                  left: 33.h,
                  right: 20.h,
                ),
                child: Text(
                  "msg_you_have_no_notifications".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 86.v),
              CustomImageView(
                imagePath: ImageConstant.imgIllustrationIndigoA700,
                height: 207.v,
                width: 219.h,
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

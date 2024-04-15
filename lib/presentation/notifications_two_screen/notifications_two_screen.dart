import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/app_bar/appbar_subtitle_one.dart';
import 'widgets/notificationstwo_item_widget.dart';
import 'models/notificationstwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/notifications_two_controller.dart';

// ignore_for_file: must_be_immutable
class NotificationsTwoScreen extends GetWidget<NotificationsTwoController> {
  const NotificationsTwoScreen({Key? key})
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
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Text(
                "lbl_notifications".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 43.v),
              _buildNotificationsTwo(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownBlueGray70001,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      actions: [
        AppbarSubtitleOne(
          text: "lbl_read_all".tr,
          margin: EdgeInsets.fromLTRB(22.h, 20.v, 22.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNotificationsTwo() {
    return Expanded(
      child: Obx(
        () => ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 15.v,
            );
          },
          itemCount: controller.notificationsTwoModelObj.value
              .notificationstwoItemList.value.length,
          itemBuilder: (context, index) {
            NotificationstwoItemModel model = controller
                .notificationsTwoModelObj
                .value
                .notificationstwoItemList
                .value[index];
            return NotificationstwoItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}

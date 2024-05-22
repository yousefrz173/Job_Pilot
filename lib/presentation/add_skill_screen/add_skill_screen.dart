import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/add_skill_controller.dart';

// ignore_for_file: must_be_immutable
class AddSkillScreen extends GetWidget<AddSkillController> {
  const AddSkillScreen({Key? key})
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
                "1b1_add_skill".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 31.v),
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_design".tr,
              ),
              SizedBox(height: 41.v),
              Text(
                "lbl_graphic_design".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_graphic_thinking".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 29.v),
              Text(
                "lbl_ui_ux_design2".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "1b1_adobe_indesign".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "1b1_web_design".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "lbl_indesign".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "lbl_canva_design".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_user_interface_design".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "lbl_product_design".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_user_experience".tr,
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

import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'models/thirtytwo2_item_model.dart';
import '../skill_8_screen/widgets/thirtytwo2_item_widget.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/skill_8_controller.dart';

// ignore_for_file: must_be_immutable
class Skill8Screen extends GetWidget<Skill8Controller> {
  const Skill8Screen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_skill_8".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 30.v),
              _buildThirtyTwo(),
              Spacer(),
              SizedBox(height: 65.v),
              CustomElevatedButton(
                width: 213.h,
                text: "lbl_change".tr.toUpperCase(),
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

  /// Section Widget
  Widget _buildThirtyTwo() {
    return Obx(
      () => Wrap(
        runSpacing: 10.v,
        spacing: 10.h,
        children: List<Widget>.generate(
          controller.skill8ModelObj.value.thirtytwo2ItemList.value.length,
          (index) {
            Thirtytwo2ItemModel model =
                controller.skill8ModelObj.value.thirtytwo2ItemList.value[index];

            return Thirtytwo2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}

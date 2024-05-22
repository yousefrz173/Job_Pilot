import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_text_form_field.dart';
import 'models/thirtytwo_item_model.dart';
import '../add_skill_one_screen/widgets/thirtytwo_item_widget.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/add_skill_one_controller.dart';

// ignore_for_file: must_be_immutable
class AddSkillOneScreen extends GetWidget<AddSkillOneController> {
  const AddSkillOneScreen({Key? key})
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
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_add_skill".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 31.v),
              CustomTextFormField(
                controller: controller.searchController,
                hintText: "lbl_search_skills".tr,
                hintStyle: CustomTextStyles.bodySmallBluegray30003,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(15.h, 8.v, 10.h, 8.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgRewind,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 40.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 12.v,
                  right: 30.h,
                  bottom: 12.v,
                ),
                borderDecoration:
                    TextFormFieldStyleHelper.fillOnPrimaryContainerTL10,
              ),
              SizedBox(height: 30.v),
              _buildThirtyTwo(),
              Spacer(),
              SizedBox(height: 66.v),
              CustomElevatedButton(
                width: 213.h,
                text: "lbl_save".tr.toUpperCase(),
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
          controller.addSkillOneModel0bj.value.thirtytwoItemList.value.length,
          (index) {
            ThirtytwoItemModel model = controller
                .addSkillOneModel0bj.value.thirtytwoItemList.value[index];

            return ThirtytwoItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}

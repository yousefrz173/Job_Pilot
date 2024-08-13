import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_search_view.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'widgets/specialization_item_widget.dart';
import 'models/specialization_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/specialization_controller.dart';

// ignore_for_file: must_be_immutable
class SpecializationScreen extends GetWidget<SpecializationController> {
  const SpecializationScreen({Key? key})
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
            vertical: 24.v,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildHeader(),
                SizedBox(height: 41.v),
                Text(
                  "lbl_specialization".tr,
                  style: CustomTextStyles.titleMediumGray90003,
                ),
                SizedBox(height: 19.v),
                _buildSpecialization(),
              ],
            ),
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
  Widget _buildHeader() {
    return Row(
      children: [
        Expanded(
          child: CustomSearchView(
            controller: controller.searchController,
            hintText: "lbl_search".tr,
            contentPadding: EdgeInsets.only(
              top: 12.v,
              right: 30.h,
              bottom: 12.v,
            ),
            borderDecoration: SearchViewStyleHelper.outlineIndigoD,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.outlineSecondaryContainerTL10,
            child: CustomImageView(
              imagePath: ImageConstant.imgClock,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSpecialization() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 161.v,
          crossAxisCount: 2,
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 15.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller
            .specializationModelObj.value.specializationItemList.value.length,
        itemBuilder: (context, index) {
          SpecializationItemModel model = controller
              .specializationModelObj.value.specializationItemList.value[index];
          return SpecializationItemWidget(
            model,
          );
        },
      ),
    );
  }
}

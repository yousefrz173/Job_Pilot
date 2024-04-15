import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_search_view.dart';
import 'widgets/searchlanguage_item_widget.dart';
import 'models/searchlanguage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/search_language_controller.dart';

// ignore_for_file: must_be_immutable
class SearchLanguageScreen extends GetWidget<SearchLanguageController> {
  const SearchLanguageScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 25.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1b1_add_language".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 29.v),
                  CustomSearchView(
                    controller: controller.searchController,
                    hintText: "lbl_search_skills".tr,
                    contentPadding: EdgeInsets.only(
                      top: 12.v,
                      right: 30.h,
                      bottom: 12.v,
                    ),
                  ),
                  SizedBox(height: 30.v),
                  _buildSearchLanguage(),
                  SizedBox(height: 15.v),
                  _buildKorean(),
                ],
              ),
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
        imagePath: ImageConstant.imgArrow1Gray90003,
        margin: EdgeInsets.fromLTRB(22.h, 28.v, 334.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchLanguage() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 15.v,
          );
        },
        itemCount: controller
            .searchLanguageModelObj.value.searchlanguageItemList.value.length,
        itemBuilder: (context, index) {
          SearchlanguageItemModel model = controller
              .searchLanguageModelObj.value.searchlanguageItemList.value[index];
          return SearchlanguageItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildKorean() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup30x30,
            height: 30.adaptSize,
            width: 30.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 7.v,
            ),
            child: Text(
              "1b1_korean".tr,
              style: CustomTextStyles.bodySmallGray90004,
            ),
          ),
        ],
      ),
    );
  }
}

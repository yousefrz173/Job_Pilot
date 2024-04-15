import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_search_view.dart';
import 'widgets/companytwo_item_widget.dart';
import 'models/companytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/company_two_controller.dart';

// ignore_for_file: must_be_immutable
class CompanyTwoScreen extends GetWidget<CompanyTwoController> {
  const CompanyTwoScreen({Key? key})
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
            padding: EdgeInsets.only(top: 8.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 19.h),
              child: Column(
                children: [
                  Text(
                    "1b1_company".tr,
                    style: CustomTextStyles.titleLargeOpenSans,
                  ),
                  SizedBox(height: 39.v),
                  CustomSearchView(
                    controller: controller.searchController,
                    hintText: "lbl_search".tr,
                  ),
                  SizedBox(height: 41.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 601.v,
                      width: 188.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 2.adaptSize,
                              width: 2.adaptSize,
                              margin: EdgeInsets.only(bottom: 4.v),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray30003,
                                borderRadius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                            ),
                          ),
                          _buildCompanyTwo(),
                        ],
                      ),
                    ),
                  ),
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
        imagePath: ImageConstant.imgArrow1BlueGray70001,
        margin: EdgeInsets.fromLTRB(22.h, 28.v, 334.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildCompanyTwo() {
    return Align(
      alignment: Alignment.center,
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 25.v,
            );
          },
          itemCount: controller
              .companyTwoModelObj.value.companytwoItemList.value.length,
          itemBuilder: (context, index) {
            CompanytwoItemModel model = controller
                .companyTwoModelObj.value.companytwoItemList.value[index];
            return CompanytwoItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}

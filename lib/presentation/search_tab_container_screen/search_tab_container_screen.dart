import 'package:jobpilot/presentation/posting_page/posting_page.dart';
import 'package:jobpilot/widgets/app_bar/custom_app_bar.dart';
import 'package:jobpilot/widgets/app_bar/appbar_leading_image.dart';
import 'package:jobpilot/widgets/custom_search_view.dart';
import 'package:jobpilot/widgets/custom_icon_button.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:jobpilot/presentation/search_page/search_page.dart';
import 'package:jobpilot/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/search_tab_container_controller.dart';

// ignore_for_file: must_be_immutable
class SearchTabContainerScreen extends GetWidget<SearchTabContainerController> {
  const SearchTabContainerScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSeventySeven(),
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTabview(),
                      SizedBox(
                        height: 460.v,
                        child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            SearchPage(),
                            SearchPage(),
                            SearchPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventySeven() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup77,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppBar(
            height: 24.v,
            leadingWidth: 374.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.fromLTRB(22.h, 12.v, 334.h, 11.v),
            ),
          ),
          SizedBox(height: 34.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.h),
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "lbl_design".tr,
              contentPadding: EdgeInsets.only(
                top: 12.v,
                right: 30.h,
                bottom: 12.v,
              ),
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 29.h,
              right: 28.h,
            ),
            child: CustomSearchView(
              controller: controller.searchController1,
              hintText: "lbl_california_usa".tr,
              contentPadding: EdgeInsets.only(
                top: 12.v,
                right: 30.h,
                bottom: 12.v,
              ),
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
      height: 40.v,
      width: 349.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.outlineSecondaryContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgClock,
                  ),
                ),
                // CustomElevatedButton(
                //   height: 40.v,
                //   width: 114.h,
                //   text: "lbl_senior_designer".tr,
                //   margin: EdgeInsets.only(left: 15.h),
                //   buttonStyle: CustomButtonStyles.fillBlueGray,
                //   buttonTextStyle: theme.textTheme.bodySmall!,
                // ),
              ],
            ),
          ),
          Tab(
            child: Text(
              "lbl_senior_designer".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_designer".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_full_time4".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      selectedIndex: RxInt(0),
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.postingPage;
      case BottomBarEnum.Connections:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Chat:
        return "/";
      case BottomBarEnum.Bookmark:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.postingPage:
        return PostingPage();
      default:
        return DefaultWidget();
    }
  }
}

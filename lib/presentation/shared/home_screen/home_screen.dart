import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:jobpilot/presentation/shared/home_screen/widgets/post_list.dart';
import 'package:jobpilot/presentation/shared/home_screen/widgets/company_list.dart';
import 'package:jobpilot/presentation/shared/home_screen/widgets/customer_list.dart';

import '../../../widgets/custom_search_view.dart';
import '../../posting_page/posting_page.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../specialization_screen/models/specialization_item_model.dart';
import '../../specialization_screen/widgets/specialization_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/seniordesigner_item_model.dart';
import '../home_screen/widgets/seniordesigner_item_widget.dart';
import '../../../widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import '../../../core/my_app_export.dart';
import 'controller/home_controller.dart';
import 'widgets/job_seeker_list.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  var searchXController = Get.find<SearchXController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              bottom: 20.h,
            ),
            child: Column(
              children: [
                _buildSixtyThree(),
                GetBuilder(
                  builder: (SearchXController searchXController) {
                    if (searchXController.searchQuery?.value == '') {
                      return _buildHomeScreen();
                    } else if (searchXController.isLoading.value) {
                      return Center(child: CircularProgressIndicator());
                    } else if (searchXController.posts.isEmpty &&
                        searchXController.jobSeekers.isEmpty &&
                        searchXController.companies.isEmpty &&
                        searchXController.customers.isEmpty) {
                      return Center(child: Text("No results found"));
                    } else {
                      return SizedBox(
                        height: 500.v,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            if (searchXController.jobSeekers.isNotEmpty)
                              JobSeekerList(
                                  jobSeekers: searchXController.jobSeekers),
                            if (searchXController.companies.isNotEmpty)
                              CompanyList(
                                  companies: searchXController.companies),
                            if (searchXController.customers.isNotEmpty)
                              CustomerList(
                                  customers: searchXController.customers),
                            if (searchXController.posts.isNotEmpty)
                              PostingItemList(posts: searchXController.posts),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
        floatingActionButton: _buildSpeedDial(),
      ),
    );
  }

  Widget _buildHomeScreen() {
    return Column(
      children: [
        SizedBox(height: 23.v),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_specialization".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              SizedBox(height: 21.v),
              _buildSpecialization(),
              SizedBox(height: 18.v),
              _buildFindYourJob(),
              SizedBox(height: 18.v),
              Text(
                "lbl_recent_job_list".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 16.v),
              _buildGoogleInc(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.add_event,
      backgroundColor: Colors.blue,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      children: [
        SpeedDialChild(
          child: Icon(Icons.post_add),
          backgroundColor: Colors.red,
          label: 'Add Post',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () {
            Get.toNamed(AppRoutes.addPostScreen);
          },
        ),
        SpeedDialChild(
          child: Icon(Icons.work),
          backgroundColor: Colors.green,
          label: 'Add Job Offer',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () async {
            print('Image type: ');
            await controller.fetchImage();
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchAndFilter() {
    return Row(
      children: [
        Expanded(
          child: CustomSearchView(
            onChanged: (nullValue) {
              if (nullValue == '') {
                searchXController.resetSearchQuery();
              }
            },
            prefix: IconButton(
              color: appTheme.blue900,
              style: CustomButtonStyles.fillDeepPurple,
              hoverColor: appTheme.orange100,
              iconSize: 30.adaptSize,
              icon: Icon(Icons.search),
              onPressed: () => searchXController.searchOrFilter(),
            ),
            suffix: IconButton(
                color: appTheme.blue900,
                hoverColor: appTheme.orange100,
                iconSize: 30.adaptSize,
                icon: Icon(Icons.close),
                onPressed: () {
                  searchXController.searchController.clear();
                  searchXController.resetSearchQuery();
                }),
            controller: searchXController.searchController,
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
            onTap: () => _showFilterBottomSheet(),
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
  Widget _buildSixtyThree() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 2.h,
        bottom: 22.h,
        left: 21.v,
        right: 21.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup77,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 10.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 17.v),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 310.h,
                        height: 50.v,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              right: 45.h,
                              child: InkWell(
                                onTap: () =>
                                    Get.toNamed(AppRoutes.notificationsScreen),
                                child: Icon(
                                  Icons.notifications_none_rounded,
                                  color: appTheme.whiteA700,
                                  size: 30.v,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: CustomImageView(
                                onTap: () =>
                                    Get.toNamed(AppRoutes.profileScreen),
                                imagePath: ImageConstant.imgImage50x50,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                radius: BorderRadius.circular(
                                  25.h,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10.v,
                              child: Text(
                                "Hello " + "lbl_orlando_diggs".tr,
                                style: CustomTextStyles
                                    .titleSmallOnPrimaryContainerMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 12.v,
                    top: 20.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_find_your".tr + "\n" + "msg_dream_job_here".tr,
                        style: CustomTextStyles
                            .titleLargeOpenSansOnPrimaryContainer,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26.v),
          _buildSearchAndFilter(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpecialization() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 141.v,
          crossAxisCount: 3,
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 5.h,
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

  /// Section Widget
  Widget _buildJoinNow() {
    return Container(
      height: 239.v,
      width: 329.h,
      margin: EdgeInsets.only(left: 3.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 17.v),
              child: Text(
                "msg_hello".tr,
                style: CustomTextStyles.titleLargeGray90002,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 181.v,
              width: 329.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 17.h,
                        vertical: 23.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_50_off".tr,
                            style:
                                CustomTextStyles.titleMediumOnPrimaryContainer,
                          ),
                          Text(
                            "msg_take_any_courses".tr,
                            style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                          ),
                          SizedBox(height: 15.v),
                          CustomElevatedButton(
                            height: 26.v,
                            width: 90.h,
                            text: "lbl_join_now".tr,
                            buttonStyle: CustomButtonStyles.fillOrange,
                            buttonTextStyle: CustomTextStyles
                                .labelLargeOnPrimaryContainerMedium,
                          ),
                          SizedBox(height: 7.v),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img52521919Mento,
                    height: 181.v,
                    width: 169.h,
                    radius: BorderRadius.circular(
                      6.h,
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            onTap: () => Get.toNamed(AppRoutes.profileScreen),
            imagePath: ImageConstant.imgPlay36x36,
            height: 36.adaptSize,
            width: 36.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 7.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFindYourJob() {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 6.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_find_your_job".tr,
                style: CustomTextStyles.titleMediumBlack900,
              ),
              SizedBox(height: 31.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 36.h,
                  vertical: 37.v,
                ),
                decoration: AppDecoration.fillLightBlue.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgHeadhunting1,
                      height: 34.adaptSize,
                      width: 34.adaptSize,
                    ),
                    SizedBox(height: 13.v),
                    Text(
                      "lbl_44_5k".tr,
                      style: CustomTextStyles.titleMediumGray90002,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "lbl_remote_job".tr,
                      style: CustomTextStyles.bodyMediumDMSansGray90002,
                    ),
                    SizedBox(height: 2.v),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 52.v),
            child: Column(
              children: [
                _buildFortyFive(
                  k: "lbl_66_8k".tr,
                  partTime: "lbl_full_time".tr,
                ),
                SizedBox(height: 20.v),
                _buildFortyFive(
                  k: "lbl_38_9k".tr,
                  partTime: "lbl_part_time".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogleInc() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineIndigoD.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillDeepPurple,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVector,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_product_designer".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 2.v),
                      SizedBox(
                        width: 152.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_google_inc".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            Container(
                              height: 2.adaptSize,
                              width: 2.adaptSize,
                              margin: EdgeInsets.only(
                                top: 8.v,
                                bottom: 6.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray70001,
                                borderRadius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                            ),
                            Text(
                              "lbl_california_usa".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 15.v),
                  child: IconButton(
                    icon: Icon(
                      Icons.report,
                      size: 34.adaptSize,
                      color: theme.primaryColor,
                    ),
                    onPressed: () {},
                  ),
                ),
                // CustomImageView(
                //   imagePath: ImageConstant.imgBookmark,
                //   height: 24.adaptSize,
                //   width: 24.adaptSize,
                //   margin: EdgeInsets.only(bottom: 15.v),
                // ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_15k".tr,
                    style: CustomTextStyles.titleSmall0penSansff150b3d,
                  ),
                  TextSpan(
                    text: "lbl2".tr,
                    style: CustomTextStyles.labelLargeOpenSansffa9a5b8,
                  ),
                  TextSpan(
                    text: "lbl_mo".tr,
                    style: CustomTextStyles.bodySmall0penSansffa9a5b8,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                controller
                    .homeModelObj.value.seniordesignerItemList.value.length,
                (index) {
                  SeniordesignerItemModel model = controller
                      .homeModelObj.value.seniordesignerItemList.value[index];

                  return SeniordesignerItemWidget(
                    model,
                  );
                },
              ),
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
        Get.toNamed(
          getCurrentRoute(type),
        );
      },
    );
  }

  /// Common widget
  Widget _buildFortyFive({
    required String k,
    required String partTime,
  }) {
    return Container(
      width: 156.h,
      padding: EdgeInsets.symmetric(
        horizontal: 43.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fill0range100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              k,
              style: CustomTextStyles.titleMediumGray90002.copyWith(
                color: appTheme.gray90002,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            partTime,
            style: CustomTextStyles.bodyMediumDMSansGray90002.copyWith(
              color: appTheme.gray90002,
            ),
          ),
        ],
      ),
    );
  }

  void _showFilterBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.all(20),
        height: Get.height * 0.6, // Adjust height as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Filter Options",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildFilterOption("Companies", Icons.filter_1),
                    _buildFilterOption("Job Seekers", Icons.filter_2),
                    _buildFilterOption("Customers", Icons.filter_3),
                    _buildFilterOption("Posts", Icons.filter_4),
                    _buildFilterOption("No filter", Icons.cancel),
                    // Add more options as needed
                  ],
                ),
              ),
            ),
            ElevatedButton(
              style: CustomButtonStyles.fillDeepPurple,
              onPressed: () {
                Get.back(); // Close the bottom sheet
                // Apply the filters here
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Text(
                    "Back",
                    style: TextStyle(color: appTheme.whiteA700, fontSize: 12.h),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    );
  }

  Widget _buildFilterOption(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        switch (title) {
          case "Companies":
            searchXController.changeFilterOption(FilterOptions.companies);
            break;
          case "Job Seekers":
            searchXController.changeFilterOption(FilterOptions.job_seekers);
            break;
          case "Customers":
            searchXController.changeFilterOption(FilterOptions.customers);
            break;
          case "Posts":
            searchXController.changeFilterOption(FilterOptions.posts);
            break;
          case "No filter":
            searchXController.changeFilterOption(FilterOptions.no_filter);
            break;
          default:
            searchXController.changeFilterOption(FilterOptions.no_filter);
            break;
        }
      },
    );
  }
}

///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) {
  switch (type) {
    case BottomBarEnum.Home:
      return AppRoutes.homeScreen;
    case BottomBarEnum.Connections:
      return AppRoutes.myConnectionScreen;
    case BottomBarEnum.Add:
      return AppRoutes.postingPageScreen;
    case BottomBarEnum.Chat:
      return AppRoutes.messageScreen;
    case BottomBarEnum.Bookmark:
      return "/";
    default:
      return AppRoutes.homeScreen;
  }
}

///Handling page based on route
Widget getCurrentPage(String currentRoute) {
  switch (currentRoute) {
    case AppRoutes.postingPageScreen:
      return PostingPage();
    default:
      return DefaultWidget();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import '../posting_page/posting_page.dart';
import 'widgets/myconnection_item_widget.dart';
import 'models/myconnection_item_model.dart';
import 'package:jobpilot/widgets/custom_elevated_button.dart';
import 'package:jobpilot/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import '../../../core/my_app_export.dart';
import 'controller/my_connection_controller.dart';

// ignore_for_file: must_be_immutable
class MyConnectionScreen extends GetWidget<MyConnectionController> {
  const MyConnectionScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 23.v,
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 27.v),
                    _buildMyConnection(),
                    SizedBox(height: 24.v),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0.0,
                child: _buildPosting1(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyConnection() {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 192.v,
            crossAxisCount: 2,
            mainAxisSpacing: 15.h,
            crossAxisSpacing: 15.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .myConnectionModelObj.value.myconnectionItemList.value.length,
          itemBuilder: (context, index) {
            MyconnectionItemModel model = controller
                .myConnectionModelObj.value.myconnectionItemList.value[index];
            return MyconnectionItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPosting() {
    return Expanded(
      child: CustomElevatedButton(
        onPressed: controller.showNotification,
        height: 40.v,
        text: "lbl_posting".tr,
        margin: EdgeInsets.only(right: 7.h),
        buttonStyle: CustomButtonStyles.fillDeepPurple,
        buttonTextStyle: CustomTextStyles.titleSmallOpenSansPrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildMyConnection1() {
    return Expanded(
      child: CustomElevatedButton(
        onPressed: controller.connectToWebSocketChannel,
        height: 40.v,
        text: "lbl_my_connection".tr,
        margin: EdgeInsets.only(left: 7.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer_2,
      ),
    );
  }

  /// Section Widget
  Widget _buildPosting1() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPosting(),
          _buildMyConnection1(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      selectedIndex: RxInt(1),
      onChanged: (BottomBarEnum type) {
        Get.toNamed(
          getCurrentRoute(type),
        );
      },
    );
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
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.postingPageScreen:
        return PostingPageScreen();
      default:
        return DefaultWidget();
    }
  }
}

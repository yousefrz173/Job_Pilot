import '../../posting_page/posting_page.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/app_bar/appbar_title.dart';
import '../../../widgets/app_bar/appbar_trailing_image.dart';
import '../../../widgets/custom_search_view.dart';
import 'widgets/andyrobertson_item_widget.dart';
import 'models/andyrobertson_item_model.dart';
import 'widgets/pm_item_widget.dart';
import 'models/pm_item_model.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../../../widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import 'controller/message_controller.dart';

// ignore_for_file: must_be_immutable
class MessageScreen extends GetWidget<MessageController> {
  const MessageScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 7.v),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.h),
                        child: CustomSearchView(
                          controller: controller.searchController,
                          hintText: "lbl_search_message".tr,
                          hintStyle: CustomTextStyles.bodySmallBluegray30002,
                          contentPadding: EdgeInsets.only(
                            top: 17.v,
                            right: 30.h,
                            bottom: 17.v,
                          ),
                          borderDecoration:
                              SearchViewStyleHelper.outlineIndigoD,
                        ),
                      ),
                      SizedBox(height: 35.v),
                      SizedBox(
                        width: double.maxFinite,
                        child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Column(
                            children: [
                              _buildAndyRobertson(),
                              SizedBox(height: 122.v),
                              _buildPm(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_messages".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgEditOrange400,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 13.v,
            right: 18.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotificationGray700,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 13.v,
            right: 38.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAndyRobertson() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Obx(
        () => ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 30.v,
            );
          },
          itemCount: controller
              .messageModelobj.value.andyrobertsonItemList.value.length,
          itemBuilder: (context, index) {
            AndyrobertsonItemModel model = controller
                .messageModelobj.value.andyrobertsonItemList.value[index];
            return AndyrobertsonItemWidget(model, () {});
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPm() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 30.v,
          );
        },
        itemCount: controller.messageModelobj.value.pmItemList.value.length,
        itemBuilder: (context, index) {
          PmItemModel model =
              controller.messageModelobj.value.pmItemList.value[index];
          return PmItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        onTap: () {},
        height: 72,
        width: 43,
        backgroundColor: appTheme.deepOrangeA100,
        child: Container(
          height: 39.0.v,
          width: 35.h,
          child: Icon(
            Icons.delete_outline_outlined,
            size: 40.adaptSize,
          ),
        ));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreen;
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

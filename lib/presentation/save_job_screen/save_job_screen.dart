import 'package:jobpilot/presentation/posting_page/posting_page.dart';
import 'widgets/savejob_item_widget.dart';
import 'models/savejob_item_model.dart';
import 'package:jobpilot/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/save_job_controller.dart';

// ignore_for_file: must_be_immutable
class SaveJobScreen extends GetWidget<SaveJobController> {
  const SaveJobScreen({Key? key})
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
            horizontal: 20.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_save_job".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 71.h,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "lbl_delete_all".tr,
                          style: CustomTextStyles.bodySmal10penSansOrange400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              _buildSaveJob(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveJob() {
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
        itemCount:
            controller.saveJobModelObj.value.savejobItemList.value.length,
        itemBuilder: (context, index) {
          SavejobItemModel model =
              controller.saveJobModelObj.value.savejobItemList.value[index];
          return SavejobItemWidget(
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

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homebluegray30005:
        return AppRoutes.postingPage;
      case BottomBarEnum.Settings:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Bookmarkbluegray30006:
        return "/";
      case BottomBarEnum.Bookmarkbluegray3000624x24:
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

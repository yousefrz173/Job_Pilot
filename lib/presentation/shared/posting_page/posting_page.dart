import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/app_bar/appbar_leading_image.dart';
import '../../../widgets/custom_bottom_bar.dart';
import 'widgets/posting_item_widget.dart';
import 'models/posting_item_model.dart';
import 'package:flutter/material.dart';
import '../../../core/my_app_export.dart';
import 'controller/posting_controller.dart';
import 'models/posting_model.dart';

class PostingPageScreen extends StatelessWidget {
  PostingPageScreen({Key? key})
      : super(
          key: key,
        );
  PostingController controller = Get.put(PostingController(PostingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: SizedBox(
            width: SizeUtils.width,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 19.h),
              child: Column(
                children: [
                  // _buildArnoldLeonardo(),
                  // SizedBox(height: 34.v),
                  _buildPosting(),
                  // SizedBox(height: 34.v),
                  // _buildArnoldLeonardo(),
                  // SizedBox(height: 34.v),
                  // _buildArnoldLeonardo(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  Widget _buildBottomBar() {
    return CustomBottomBar(
      selectedIndex: RxInt(2),
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type));
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
        return AppRoutes.postPage;
      case BottomBarEnum.Chat:
        return AppRoutes.messageScreen;
      case BottomBarEnum.Bookmark:
        return "/";
      default:
        return "/";
    }
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1Gray90002,
        margin: EdgeInsets.fromLTRB(30.h, 27.v, 327.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildPosting() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 11.v,
              );
            },
            itemCount:
                controller.postingModelObj.value.postingItemList.value.length,
            itemBuilder: (context, index) {
              PostingItemModel model =
                  controller.postingModelObj.value.postingItemList.value[index];
              return PostingItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}

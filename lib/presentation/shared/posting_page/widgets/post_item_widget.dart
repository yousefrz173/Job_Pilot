import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jobpilot/core/my_app_export.dart';
import '../controller/posting_controller.dart';
import '../models/posting_item_model.dart';

class PostWidget extends GetWidget<PostingController> {
  final PostingItemModel postingItemModelObj;

  PostWidget({required this.postingItemModelObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse95,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          postingItemModelObj!.author!.value,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        children: [
                          Container(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.h,
                              vertical: 2.v,
                            ),
                            decoration:
                                AppDecoration.outlineBluegray30003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVector232,
                              height: 6.v,
                              width: 2.h,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "lbl_21_minuts_ago".tr,
                              style: CustomTextStyles.bodySmallBluegray3000310,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          if (!(postingItemModelObj.isImageNotFoud()))
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Image.asset(
                  ImageConstant.img52521919Mento,
                  height: 170.v,
                  width: 160.h,
                  // alignment: Alignment.center,
                  fit: BoxFit.fill,
                ),

                // CustomImageView(
                //   imagePath: ImageConstant.img52521919Mento,
                //   height: 170.v,
                //   width: 160.h,
                //   alignment: Alignment.center,
                //   fit: BoxFit.fill,
                // ),
              ),
            ),
          SizedBox(height: 20.v),
          Container(
            width: 239.h,
            margin: EdgeInsets.only(
              left: 20.h,
              right: 75.h,
            ),
            child: Text(
              postingItemModelObj.title!.value,
              maxLines: 2,
              overflow: TextOverflow.clip,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            width: 281.h,
            margin: EdgeInsets.only(
              left: 20.h,
              right: 33.h,
            ),
            child: Text(
              postingItemModelObj.body!.value,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 33.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 26.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.fillDeeppurpleA700.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () async => await controller.like(),
                  child: Icon(
                    Icons.favorite,
                    size: 30.adaptSize,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 3.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "lbl_12".tr,
                    style: CustomTextStyles.bodySmallffffffff,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                  ),
                  child: InkWell(
                    onTap: () async => await controller.comment(),
                    child: Icon(
                      Icons.mode_comment_sharp,
                      size: 30.adaptSize,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 3.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "lbl_10".tr,
                    style: CustomTextStyles.bodySmallffffffff,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () async => await controller.report(),
                  child: Icon(
                    Icons.report,
                    size: 30.adaptSize,
                    color: theme.canvasColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

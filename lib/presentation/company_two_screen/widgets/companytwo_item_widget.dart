import '../models/companytwo_item_model.dart';
import '../controller/company_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class CompanytwoItemWidget extends StatelessWidget {
  CompanytwoItemWidget(
    this.companytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CompanytwoItemModel companytwoItemModelObj;

  var controller = Get.find<CompanyTwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: companytwoItemModelObj.google!.value,
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    companytwoItemModelObj.google1!.value,
                    style: CustomTextStyles.bodySmallGray90004,
                  ),
                ),
                SizedBox(
                  width: 94.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Obx(
                        () => Text(
                          companytwoItemModelObj.company!.value,
                          style: CustomTextStyles.bodySmallBluegray3000310,
                        ),
                      ),
                      Container(
                        height: 2.adaptSize,
                        width: 2.adaptSize,
                        margin: EdgeInsets.only(
                          top: 8.v,
                          bottom: 4.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray30003,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Obx(
                        () => Text(
                          companytwoItemModelObj.internet!.value,
                          style: CustomTextStyles.bodySmallBluegray3000310,
                        ),
                      ),
                    ],
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

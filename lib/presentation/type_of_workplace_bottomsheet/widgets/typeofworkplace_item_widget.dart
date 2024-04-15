import '../models/typeofworkplace_item_model.dart';
import '../controller/type_of_workplace_controller.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class TypeofworkplaceItemWidget extends StatelessWidget {
  TypeofworkplaceItemWidget(
    this.typeofworkplaceItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  TypeofworkplaceItemModel typeofworkplaceItemModelObj;

  var controller = Get.find<TypeOfWorkplaceController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => Text(
                typeofworkplaceItemModelObj.onSite!.value,
                style: CustomTextStyles.titleSmallOpenSans,
              ),
            ),
            SizedBox(height: 5.v),
            Obx(
              () => Text(
                typeofworkplaceItemModelObj.employeesComeTo!.value,
                style: CustomTextStyles.bodySmallOpenSansGray60002,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(
            top: 11.v,
            bottom: 13.v,
          ),
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.outlineOrange.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 12.adaptSize,
            width: 12.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.orange400,
              borderRadius: BorderRadius.circular(
                6.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

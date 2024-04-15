import 'widgets/typeofworkplace_item_widget.dart';
import 'models/typeofworkplace_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';
import 'controller/type_of_workplace_controller.dart';

class TypeOfWorkplaceBottomsheet extends StatelessWidget {
  TypeOfWorkplaceBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );
  TypeOfWorkplaceController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector56Gray700,
            height: 4.v,
            width: 30.h,
          ),
          SizedBox(height: 47.v),
          Text(
            "msg_choose_the_type".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 9.v),
          Container(
            width: 250.h,
            margin: EdgeInsets.only(
              left: 25.h,
              right: 23.h,
            ),
            child: Text(
              "msg_decide_and_choose".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 27.v),
          Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 13.v,
                );
              },
              itemCount: controller.typeOfWorkplaceModelObj.value
                  .typeofworkplaceItemList.value.length,
              itemBuilder: (context, index) {
                TypeofworkplaceItemModel model = controller
                    .typeOfWorkplaceModelObj
                    .value
                    .typeofworkplaceItemList
                    .value[index];
                return TypeofworkplaceItemWidget(
                  model,
                );
              },
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }
}

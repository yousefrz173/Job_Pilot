import '../models/seniordesigner_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class SeniordesignerItemWidget extends StatelessWidget {
  SeniordesignerItemWidget(
    this.seniordesignerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  SeniordesignerItemModel seniordesignerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 5.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          seniordesignerItemModelObj.seniorDesigner!.value,
          style: TextStyle(
            color: appTheme.blueGray70001,
            fontSize: 10.fSize,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (seniordesignerItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blueGray100,
        selectedColor: appTheme.deepOrangeA200,
        shape: (seniordesignerItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
        onSelected: (value) {
          seniordesignerItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}

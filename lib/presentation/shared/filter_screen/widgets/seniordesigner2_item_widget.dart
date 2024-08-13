import '../models/seniordesigner2_item_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/my_app_export.dart';

// ignore: must_be_immutable
class Seniordesigner2ItemWidget extends StatelessWidget {
  Seniordesigner2ItemWidget(
    this.seniordesigner2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  Seniordesigner2ItemModel seniordesigner2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 7.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          seniordesigner2ItemModelObj.seniorDesigner!.value,
          style: TextStyle(
            color: appTheme.blueGray70001,
            fontSize: 10.fSize,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (seniordesigner2ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.orange100,
        selectedColor: appTheme.orange100,
        shape: (seniordesigner2ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray70001.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
        onSelected: (value) {
          seniordesigner2ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}

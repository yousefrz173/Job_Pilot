import '../models/leadership_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

// ignore: must_be_immutable
class LeadershipItemWidget extends StatelessWidget {
  LeadershipItemWidget(
    this.leadershipItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LeadershipItemModel leadershipItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 10.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          leadershipItemModelObj.leadership!.value,
          style: TextStyle(
            color: appTheme.blueGray70001,
            fontSize: 12.fSize,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (leadershipItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.blueGray100,
        selectedColor: appTheme.blueGray100,
        shape: (leadershipItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray70001.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
        onSelected: (value) {
          leadershipItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}

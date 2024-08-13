import '../models/posting_item_model.dart';
import '../controller/posting_controller.dart';
import '../../../../widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import '../../../../core/my_app_export.dart';
import 'post_item_widget.dart';

// ignore: must_be_immutable
class PostingItemWidget extends StatelessWidget {
  PostingItemWidget(
    this.postingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  PostingItemModel postingItemModelObj;

  var controller = Get.find<PostingController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PostWidget(
            postingItemModelObj: postingItemModelObj,
          ),
        ),
      ],
    );
  }
}

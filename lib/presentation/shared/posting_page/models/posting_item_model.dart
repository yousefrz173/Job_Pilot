import 'package:jobpilot/presentation/posting_page/models/posting_item_model.dart';

import '../../../../core/my_app_export.dart';

/// This class is used in the [posting_item_widget] screen.
class PostingItemModel {
  PostingItemModel(
      {this.id, this.body, this.title, this.imagePath, this.author}) {
    id = id ?? Rx(0);
    body = body ?? Rx("body");
    title = title ?? Rx("title");
    imagePath = imagePath ?? Rx("assets/images/image_not_found.png");
    author = author ?? Rx("no author");
  }
  Rx<int>? id;
  Rx<String>? author;
  Rx<String>? title;
  Rx<String>? body;
  Rx<String>? imagePath;
  bool isImageNotFoud() {
    return this.imagePath == "assets/images/image_not_found.png";
  }

  factory PostingItemModel.fromJson(Map<String, dynamic> json) {
    return PostingItemModel(
      title: Rx(json['title']),
      body: Rx(json['body']),
    );
  }
}

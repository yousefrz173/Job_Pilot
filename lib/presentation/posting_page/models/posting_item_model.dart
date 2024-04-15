import '../../../core/app_export.dart';

/// This class is used in the [posting_item_widget] screen.
class PostingItemModel {
  PostingItemModel({this.id}) {
    id = id ?? Rx("");
  }
  Rx<String>? id;
}

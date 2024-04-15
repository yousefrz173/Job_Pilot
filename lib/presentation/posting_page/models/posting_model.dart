import 'posting_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [posting_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PostingModel {
  Rx<List<PostingItemModel>> postingItemList =
      Rx(List.generate(3, (index) => PostingItemModel()));
}

import 'posting_item_model.dart';
import '../../../../core/my_app_export.dart';

/// This class defines the variables used in the [posting_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PostingModel {
  Rx<List<PostingItemModel>> postingItemList = Rx(
    [
      PostingItemModel(
        author: Rx("luna jake"),
        title: Rx("hello people"),
        id: Rx(0),
        body: Rx("hello people i wanna talk about myself in one sentence"),
        imagePath: Rx("D:/htmlcss.png"),
      ),
      PostingItemModel(
        author: Rx("james waterson"),
        title: Rx("senior designer"),
        id: Rx(1),
        body: Rx("there is a senior design job we recieve applications"),
      ),
      PostingItemModel(
        author: Rx("neymar natali"),
        title: Rx("hello people"),
        id: Rx(2),
        body: Rx("hello people i wanna talk about myself in one sentence"),
      ),
    ],
  );
  // Rx(List.generate(3, (index) => PostingItemModel()));
}

import '../../../core/app_export.dart';
import '../models/posting_model.dart';

/// A controller class for the PostingPage.

/// This class manages the state of the PostingPage, including the
/// current postingMode10bj
class PostingController extends GetxController {
  PostingController(this.postingModelObj);

  Rx<PostingModel> postingModelObj;
}

import '../../../core/app_export.dart';
import '../models/post_model.dart';

/// A controller class for the PostPage.

/// This class manages the state of the PostPage, including the
/// current postMode10bj
class PostController extends GetxController {
  PostController(this.postMode10bj);

  Rx<PostModel> postMode10bj;

  Rx<String> radioGroup = "".obs;
}

import 'package:get/get.dart';

import '../controller/posting_controller.dart';
import '../models/posting_model.dart';

class PostingPageBinding extends Bindings {
  @override
  void dependencies() {
    Rx<PostingModel> postingModelObj = Rx(PostingModel());
    Get.lazyPut(() => PostingController(postingModelObj));
  }
}

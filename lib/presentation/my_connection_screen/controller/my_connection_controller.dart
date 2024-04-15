import '../../../core/app_export.dart';
import '../models/my_connection_model.dart';

/// A controller class for the MyConnectionScreen.

/// This class manages the state of the MyConnectionScreen, including the
/// current myConnectionModel0bj
class MyConnectionController extends GetxController {
  Rx<MyConnectionModel> myConnectionModelObj = MyConnectionModel().obs;
}

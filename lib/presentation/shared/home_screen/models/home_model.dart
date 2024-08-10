import 'seniordesigner_item_model.dart';
import '../../../../core/my_app_export.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<SeniordesignerItemModel>> seniordesignerItemList =
      Rx(List.generate(3, (index) => SeniordesignerItemModel()));
}

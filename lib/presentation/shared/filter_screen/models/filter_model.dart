import 'seniordesigner2_item_model.dart';
import '../../../../core/my_app_export.dart';

/// This class defines the variables used in the [filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel {
  Rx<List<Seniordesigner2ItemModel>> seniordesigner2ItemList =
      Rx(List.generate(3, (index) => Seniordesigner2ItemModel()));
}

import 'thirtytwo2_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [skill_8_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Skill8Model {
  Rx<List<Thirtytwo2ItemModel>> thirtytwo2ItemList =
      Rx(List.generate(8, (index) => Thirtytwo2ItemModel()));
}

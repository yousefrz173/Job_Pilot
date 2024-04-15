import 'thirtytwo_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [add_skill_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddSkillOneModel {
  Rx<List<ThirtytwoItemModel>> thirtytwoItemList =
      Rx(List.generate(8, (index) => ThirtytwoItemModel()));
}

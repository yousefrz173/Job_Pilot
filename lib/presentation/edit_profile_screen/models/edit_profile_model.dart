import 'leadership_item_model.dart';
import 'thirtythree_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [edit_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditProfileModel {
  Rx<List<LeadershipItemModel>> leadershipItemList =
      Rx(List.generate(6, (index) => LeadershipItemModel()));

  Rx<List<ThirtythreeItemModel>> thirtythreeItemList =
      Rx(List.generate(5, (index) => ThirtythreeItemModel()));
}

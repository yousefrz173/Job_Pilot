import '../../../../core/my_app_export.dart';

/// This class is used in the [leadership_item_widget] screen.
class LeadershipItemModel {
  Rx<String>? leadership = Rx("Leadership");

  Rx<bool>? isSelected = Rx(false);
}

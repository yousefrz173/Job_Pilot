import '../../../core/app_export.dart';

/// This class is used in the [typeofworkplace_item_widget] screen.
class TypeofworkplaceItemModel {
  TypeofworkplaceItemModel({
    this.onSite,
    this.employeesComeTo,
    this.id,
  }) {
    onSite = onSite ?? Rx("On-site");
    employeesComeTo = employeesComeTo ?? Rx("Employees come to work");
    id = id ?? Rx("");
  }
  Rx<String>? onSite;

  Rx<String>? employeesComeTo;

  Rx<String>? id;
}

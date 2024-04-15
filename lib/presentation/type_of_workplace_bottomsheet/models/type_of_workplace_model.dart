import '../../../core/app_export.dart';
import 'typeofworkplace_item_model.dart';

/// This class defines the variables used in the [type_of_workplace_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class TypeOfWorkplaceModel {
  Rx<List<TypeofworkplaceItemModel>> typeofworkplaceItemList = Rx([
    TypeofworkplaceItemModel(
        onSite: "On-site".obs, employeesComeTo: "Employees come to work".obs),
    TypeofworkplaceItemModel(
        onSite: "Hybrid".obs,
        employeesComeTo: "Employees work directly on site or off site".obs),
    TypeofworkplaceItemModel(
        onSite: "Remote".obs, employeesComeTo: "Employees working off site".obs)
  ]);
}

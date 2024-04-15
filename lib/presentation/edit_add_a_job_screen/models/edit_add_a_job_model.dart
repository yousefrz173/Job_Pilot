import '../../../core/app_export.dart';
import 'editaddajob_item_model.dart';

/// This class defines the variables used in the [edit_add_a_job_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditAddAJobModel {
  Rx<List<EditaddajobItemModel>> editaddajobItemList = Rx([
    EditaddajobItemModel(
        jobPosition: "Job position*".obs,
        administrativeAssistant: "Administrative Assistant".obs),
    EditaddajobItemModel(
        jobPosition: "Type of workplace".obs,
        administrativeAssistant: "On-site".obs),
    EditaddajobItemModel(
        jobPosition: "Job location".obs,
        administrativeAssistant: "California, USA".obs),
    EditaddajobItemModel(
        jobPosition: "Company".obs, administrativeAssistant: "Apple Inc".obs),
    EditaddajobItemModel(
        jobPosition: "Employment type".obs,
        administrativeAssistant: "Full Time".obs),
    EditaddajobItemModel(jobPosition: "Description".obs)
  ]);
}

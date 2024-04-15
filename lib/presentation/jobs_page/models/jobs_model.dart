import '../../../core/app_export.dart';
import 'jobs_item_model.dart';

/// This class defines the variables used in the [jobs_page],
/// and is typically used to hold data that is passed between different parts of the application.
class JobsModel {
  Rx<List<JobsItemModel>> jobsItemList = Rx([
    JobsItemModel(
        uIUXDesigner: "UI/UX Designer".obs,
        googleInc: "Google inc".obs,
        californiaUSA: "California, USA".obs,
        design: "Design".obs,
        fullTime: "Full time".obs,
        seniorDesigner: "Senior designer".obs,
        duration: "25 minute ago".obs),
    JobsItemModel(
        uIUXDesigner: "IT Programmer".obs,
        googleInc: "Google inc".obs,
        californiaUSA: "California, USA".obs,
        design: "Programmer".obs,
        fullTime: "Full time".obs,
        seniorDesigner: "Senior programmer".obs,
        duration: "45 minute ago".obs)
  ]);
}

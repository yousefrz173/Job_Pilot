import 'fulltime_item_model.dart';
import 'fulltime2_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [filter_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterOneModel {
  Rx<List<String>> radioList =
      Rx(["lbl_recent", "lbl_last_week", "lbl_last_month", "lbl_any_time"]);

  Rx<List<String>> radioList1 = Rx(["lbl_on_site", "lbl_hybrid", "lbl_remote"]);

  Rx<List<FulltimeItemModel>> fulltimeItemList =
      Rx(List.generate(5, (index) => FulltimeItemModel()));

  Rx<List<Fulltime2ItemModel>> fulltime2ItemList =
      Rx(List.generate(4, (index) => Fulltime2ItemModel()));

  Rx<List<String>> radioList2 = Rx([
    "lbl_no_experience",
    "msg_less_than_a_year",
    "1b1_1_3_years",
    "1b1_3_5_years",
    "1b1_5_10_years",
    "msg_more_than_10_years"
  ]);
}

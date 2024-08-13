import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../../core/my_app_export.dart';
import '../../../../data/models/userModels/user_models.dart';
import '../../posting_page/models/posting_item_model.dart';

enum FilterOptions { companies, job_seekers, customers, posts, no_filter }

class SearchXController extends GetxController {
  var jobSeekers = <JobSeeker>[].obs;
  var companies = <Company>[].obs;
  var customers = <Customer>[].obs;
  var posts = <PostingItemModel>[].obs;
  var filterOption = FilterOptions.companies.obs;
  var isLoading = false.obs;
  var isFilter = false.obs;

  Rx<String>? searchQuery = Rx('');
  TextEditingController searchController = TextEditingController();

  void resetSearchQuery() {
    searchQuery = ''.obs;
    update();
  }

  void clearAllResults() {
    companies.clear();
    jobSeekers.clear();
    customers.clear();
    posts.clear();
  }

  void changeFilterOption(FilterOptions option) {
    print(option.toString());
    if (option == FilterOptions.no_filter) {
      isFilter.value = false;
    } else {
      isFilter.value = true;
    }
    print(isFilter);
    filterOption.value = option;
    update();
  }

  Future<void> searchOrFilter() async {
    _retrieveQuery();
    var data = {};

    if (isFilter.value) {
      data = {
        'query': searchController.value.text,
        'filter': filterOption.value.name,
      };
    } else {
      data = {
        'query': searchController.value.text,
      };
    }
    try {
      var response = await HttpUtil().post(
        path: AppConstants.COMPANY_PATH +
            (isFilter.value
                ? AppConstants.FILTER_PATH
                : AppConstants.SEARCH_PATH),
        data: data,
      );
      print(response.runtimeType);
      print("HIJACK $response");
      isFilter.value
          ? _parseFilterResults(response, filterOption.value)
          : _parseSearchResults(response);
    } catch (e) {
      Get.snackbar(
        backgroundColor: appTheme.blueGray10002,
        'Error',
        e.toString(),
      );
      print('Error: $e');
    } finally {
      isLoading.value = false;
    }
    update();
  }

  Future<void> _parseFilterResults(response, FilterOptions filterOption) async {
    switch (filterOption) {
      case FilterOptions.companies:
        companies.value = ((response ?? []) as List)
            .map((data) => Company.fromJson(data))
            .toList();
        print(companies);
        return;
      case FilterOptions.job_seekers:
        jobSeekers.value = ((response ?? []) as List)
            .map((data) => JobSeeker.fromJson(data))
            .toList();
        return;
      case FilterOptions.customers:
        customers.value = ((response ?? []) as List)
            .map((data) => Customer.fromJson(data))
            .toList();
        return;
      case FilterOptions.posts:
        posts.value = ((response ?? []) as List)
            .map((data) => PostingItemModel.fromJson(data))
            .toList();
        return;
      case FilterOptions.no_filter:
        return;
    }
  }

  void _parseSearchResults(Map<String, dynamic> response) {
    jobSeekers.value = ((response['job_seekers'] ?? []) as List)
        .map((data) => JobSeeker.fromJson(data))
        .toList();
    print(jobSeekers);
    companies.value = ((response['companies'] ?? []) as List)
        .map((data) => Company.fromJson(data))
        .toList();

    customers.value = ((response['customers'] ?? []) as List)
        .map((data) => Customer.fromJson(data))
        .toList();

    posts.value = ((response['posts'] ?? []) as List)
        .map((data) => PostingItemModel.fromJson(data))
        .toList();
  }

  void _retrieveQuery() {
    isLoading.value = true;
    update();
    clearAllResults();
    searchQuery = this.searchController.value.text.obs;
  }

  // Future<void> filter() async {
  //   _retrieveQuery();

  //   var data = {
  //     'query': searchController.value.text,
  //     'filter': filterOption.value.toString().toLowerCase(),
  //   };

  //   try {
  //     var response = await HttpUtil().post(
  //       path: AppConstants.COMPANY_PATH + AppConstants.SEARCH_PATH,
  //       data: data,
  //     );
  //     _parseSearchResults(response);
  //   } catch (e) {
  //     Get.snackbar(
  //       backgroundColor: appTheme.blueGray10002,
  //       'Error',
  //       e.toString(),
  //     );
  //   } finally {
  //     isLoading.value = false;
  //   }
  //   isLoading.value = false;
  // }

  // Future<void> search() async {
  //   _retrieveQuery();

  //   var data = {
  //     'query': searchController.value.text,
  //   };
  //   try {
  //     var response = await HttpUtil().post(
  //       path: AppConstants.COMPANY_PATH + AppConstants.SEARCH_PATH,
  //       data: data,
  //     );
  //     _parseSearchResults(response);
  //   } catch (e) {
  //     Get.snackbar(
  //       backgroundColor: appTheme.blueGray10002,
  //       'Error',
  //       e.toString(),
  //     );
  //     print('Error: $e');
  //   } finally {
  //     isLoading.value = false;
  //   }
  //   update();
  // }
}

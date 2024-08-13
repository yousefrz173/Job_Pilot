import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../core/my_app_export.dart';
import '../../../specialization_screen/models/specialization_model.dart';
import '../models/home_model.dart';

/// A controller class for the HomeScreen.

/// This class manages the state of the HomeScreen, including the
/// current homeMode10bj
class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  TextEditingController searchController = TextEditingController();

  Rx<SpecializationModel> specializationModelObj = SpecializationModel().obs;

  Rx<Uint8List>? imageData = Rx(Uint8List(5));

  Rx<String>? searchOrFilter = Rx(AppConstants.SEARCH_PATH);

  Future<void> search() async {
    var data = {
      'query': searchController.text,
    };
    var response = HttpUtil().post(
      path: AppConstants.COMPANY_PATH + AppConstants.SEARCH_PATH,
      data: data,
    );
  }

  Future<void> fetchImage() async {
    var path = "company/profile/15WIN_20240429_15_51_59_Pro.jpg";

    Response response = await HttpUtil().get(path: path);

    // imageData?.value = Uint8List.fromList(await response.stream.toBytes());
    print(response);
    update();

    print(response.runtimeType);
    print(response);
    print(response);
  }

  Future<Uint8List?> loadImage() async {
    try {
      final response = await http.get(
        Uri.parse(
            "${AppConstants.SERVER_PHOTO_API_URL}/company/profile/15WIN_20240429_15_51_59_Pro.jpg"),
      );
      print(response.body);
      if (response.statusCode == 200) {
        Uint8List bytes = response.bodyBytes;
        if (bytes.length > 4 &&
            bytes.sublist(0, 4).every((byte) => byte == 32)) {
          bytes = bytes.sublist(4);
        }
        imageData?.value = bytes;
        return imageData?.value;
      } else {
        print('Status code: ${response.statusCode}');
        print('Headers: ${response.headers}');
        print('Body: ${response.body}');
        print('HTTP error. Status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error loading image: $e');
    }
  }

  @override
  void onInit() {
    loadImage();
    super.onInit();
  }

  @override
  void onClose() {
    dispose();
    super.onClose();
  }
}

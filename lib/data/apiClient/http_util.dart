import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:jobpilot/core/app_constants.dart';
import 'package:jobpilot/core/app_export.dart';
import 'package:jobpilot/core/errors/error_entity.dart';
import 'package:jobpilot/data/models/userModels/user_models.dart';

class HttpUtil {
  static final HttpUtil _instance = HttpUtil.internal();

  factory HttpUtil() {
    return _instance;
  }

  late Dio dio;
  String _token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJII1NiJ9.eyJc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL2NvbXBhbnkvbG9naW4iLCJpYXQiOjE3MjMzMjQ0ODAsImV4cCI6MTcyMzMyODA4MCwibmJmIjoxNzIzMzI0NDgwLCJqdGkiOiJRbm5mRGVaYXplc0cwdUM2Iiwic3ViIjoiMjIiLCJwcnYiOiJjZmU3ZWM5OWEyM2Y0Mzg4ZTdmMWQ1ZmI4NzA4Mzc1Yzg1NGVkYTY0In0.L7LvaY3N74aEipIdlbj7Nd5C_qHuRdfkdVpvn8swMWE";

  // Private constructor
  HttpUtil.internal() {
    BaseOptions options = BaseOptions(
      baseUrl: AppConstants.SERVER_API_URL,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      headers: {},
      contentType: 'application/json; charset=utf-8',
      responseType: ResponseType.json,
    );
    dio = Dio(options);

    // Configure the Dio instance to accept self-signed certificates
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      HttpClient client = HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // print("app request data ${options.data}");
          return handler.next(options);
        },
        onResponse: (response, handler) {
          if (kDebugMode) {
            print("app response data ${response.data}");
          }
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          if (kDebugMode) {
            print("app error data $e");
          }
          ErrorEntity eInfo = createErrorEntity(e);
          onError(eInfo);
        },
      ),
    );
  }

  // Method to fetch data via GET request
  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};

    Map<String, dynamic>? authorization = await getAuthorizationHeader();
    if (authorization != null) {
      requestOptions.headers!.addAll(authorization);
    }

    var response = await dio.get(
      path,
      queryParameters: queryParameters,
      options: requestOptions,
    );
    return response.data;
  }

  // Method to send data via POST request
  Future<Map<String, dynamic>> post({
    required String path,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};

    // Add authorization header if user is logged in
    Map<String, dynamic>? authorization = await getAuthorizationHeader();
    if (authorization != null) {
      requestOptions.headers!.addAll(authorization);
    }

    var response = await dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: requestOptions,
    );
    return response.data;
  }

  // Method to get authorization header if user is logged in
  Future<Map<String, dynamic>?> getAuthorizationHeader() async {
    var headers = <String, dynamic>{};
    var user = await UserPreferences.loadUser() ??
        User(password: 'password', email: 'email', token: _token);
    if (user.hasToken) {
      headers['Authorization'] = 'Bearer ${user.token}';
    }
    return headers.isNotEmpty ? headers : null;
  }

  ErrorEntity createErrorEntity(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ErrorEntity(code: -1, message: "Connection timed out");

      case DioExceptionType.sendTimeout:
        return ErrorEntity(code: -1, message: "Send timed out");

      case DioExceptionType.receiveTimeout:
        return ErrorEntity(code: -1, message: "Receive timed out");

      case DioExceptionType.badCertificate:
        return ErrorEntity(code: -1, message: "Bad SSL certificates");

      case DioExceptionType.badResponse:
        switch (error.response!.statusCode) {
          case 400:
            return ErrorEntity(code: 400, message: "Bad request");
          case 401:
            return ErrorEntity(code: 401, message: "Permission denied");
          case 500:
            return ErrorEntity(code: 500, message: "Server internal error");
        }
        return ErrorEntity(
            code: error.response!.statusCode!, message: "Server bad response");

      case DioExceptionType.cancel:
        return ErrorEntity(code: -1, message: "Server canceled it");

      case DioExceptionType.connectionError:
        return ErrorEntity(code: -1, message: "Connection error");

      case DioExceptionType.unknown:
        return ErrorEntity(code: -1, message: "Unknown error");
    }
  }

  void onError(ErrorEntity eInfo) {
    if (kDebugMode) {
      print('error.code -> ${eInfo.code}, error.message -> ${eInfo.message}');
    }
    switch (eInfo.code) {
      case 400:
        print("Server syntax error");
        break;
      case 401:
        print("You are denied to continue");
        break;
      case 500:
        print("Server internal error");
        break;
      default:
        print("Unknown error");
        break;
    }
    throw Exception(
      eInfo.message,
    );
  }
}

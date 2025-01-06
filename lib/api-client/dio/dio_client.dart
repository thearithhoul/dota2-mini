import 'package:dio/dio.dart';
import 'package:dota2_app/api-client/api_errors/bad_network_api_error.dart';
import 'package:dota2_app/api-client/dio/exceptions/exceptions.dart';
import 'intercentors/bad_network_error_interceptor.dart';

const _defaultConnectTimeout =
    Duration(milliseconds: Duration.millisecondsPerMinute);
const _defaultReceiveTimeout =
    Duration(milliseconds: Duration.millisecondsPerMinute);

class DioClient {
  final String baseUrl;
  late Dio _dio;

  DioClient(this._dio, this.baseUrl) {
    _dio
      ..options.baseUrl = baseUrl
      ..options.connectTimeout = _defaultConnectTimeout
      ..options.receiveTimeout = _defaultReceiveTimeout
      ..httpClientAdapter
      ..options.headers = {'Content-Type': 'application/json; charset=UTF-8'};
    _dio.interceptors.add(BadNetworkErrorInterceptor());
    _dio.interceptors.add(LogInterceptor());

    // if (kDebugMode) {
    //   _dio.interceptors.add(LogInterceptor(
    //       responseBody: true,
    //       error: true,
    //       requestHeader: false,
    //       responseHeader: false,
    //       request: false,
    //       requestBody: false));
    // }
  }

  Future<Response> post(
    String path,
    dynamic data,
  ) async {
    try {
      return await _dio.post(path, data: data);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on DioException {
      throw ApiException();
    }
  }

  Future<Response> put(String path, dynamic data) async {
    try {
      return await _dio.put(path, data: data);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on DioException {
      throw ApiException();
    }
  }

  Future<dynamic> get(String path) async {
    try {
      var response = await _dio.get(path);
      return response.data;
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on DioException {
      throw ApiException();
    }
  }

  Future<Response> delete(String path) async {
    try {
      return await _dio.delete(path);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on DioException {
      throw ApiException();
    }
  }
}

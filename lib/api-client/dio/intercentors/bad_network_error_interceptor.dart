import 'package:dio/dio.dart';
import 'package:dota2_app/api-client/api_errors/bad_network_api_error.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../network/network_info.dart';

class BadNetworkErrorInterceptor extends Interceptor {
  final NetworkInfo _networkInfo = NetworkInfo(InternetConnectionChecker());

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response == null && !await _networkInfo.isConnected) {
      return BadNetworkApiError(dioException: err);
    }

    return null;
  }
}

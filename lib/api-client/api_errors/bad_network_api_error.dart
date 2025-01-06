import 'package:dio/dio.dart';

class BadNetworkApiError extends DioException {
  final DioException dioException;
  BadNetworkApiError({required this.dioException})
      : super(requestOptions: dioException.requestOptions);
}

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest() = UnauthorizedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;
  const factory NetworkExceptions.badCertificate() = BadCertificate;
  const factory NetworkExceptions.connectionError() = ConnectionError;
  const factory NetworkExceptions.unknown() = Unknown;

  static NetworkExceptions handleResponse(Response? response) {
    int statusCode = response?.statusCode ?? 0;
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return NetworkExceptions.unauthorizedRequest();
      case 404:
        return NetworkExceptions.notFound("Not found");
      case 409:
        return NetworkExceptions.conflict();
      case 408:
        return NetworkExceptions.requestTimeout();
      case 500:
        return NetworkExceptions.internalServerError();
      case 503:
        return NetworkExceptions.serviceUnavailable();
      default:
        var responseCode = statusCode;
        return NetworkExceptions.defaultError(
          "Received invalid status code: $responseCode",
        );
    }
  }

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              networkExceptions = NetworkExceptions.requestCancelled();
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = NetworkExceptions.noInternetConnection();
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.badResponse:
              networkExceptions =
                  NetworkExceptions.handleResponse(error.response);
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.badCertificate:
              networkExceptions = NetworkExceptions.badCertificate();
              break;
            case DioExceptionType.connectionError:
              networkExceptions = NetworkExceptions.connectionError();
              break;
            case DioExceptionType.unknown:
              networkExceptions = NetworkExceptions.unknown();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (_) {
        return NetworkExceptions.formatException();
      } catch (_) {
        return NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return NetworkExceptions.unableToProcess();
      } else {
        return NetworkExceptions.unexpectedError();
      }
    }
  }

  // static String getErrorMessage(NetworkExceptions networkExceptions) {
  //   var errorMessage = "";
  //   networkExceptions.when(notImplemented: () {
  //     errorMessage = NetworkExceptionErrorType.notImplement.message;
  //   }, requestCancelled: () {
  //     errorMessage = NetworkExceptionErrorType.requestCancelled.message;
  //   }, internalServerError: () {
  //     errorMessage = NetworkExceptionErrorType.internalServerError.message;
  //   }, notFound: (String reason) {
  //     errorMessage = reason;
  //   }, serviceUnavailable: () {
  //     errorMessage = NetworkExceptionErrorType.serviceUnavailable.message;
  //   }, methodNotAllowed: () {
  //     errorMessage = NetworkExceptionErrorType.methodNotAllowed.message;
  //   }, badRequest: () {
  //     errorMessage = NetworkExceptionErrorType.badRequest.message;
  //   }, unauthorizedRequest: () {
  //     errorMessage = NetworkExceptionErrorType.unauthorizedRequest.message;
  //   }, unexpectedError: () {
  //     errorMessage = NetworkExceptionErrorType.unexpectedError.message;
  //   }, requestTimeout: () {
  //     errorMessage = NetworkExceptionErrorType.requestTimeout.message;
  //   }, noInternetConnection: () {
  //     errorMessage = NetworkExceptionErrorType.noInternetConnection.message;
  //   }, conflict: () {
  //     errorMessage = NetworkExceptionErrorType.conflict.message;
  //   }, sendTimeout: () {
  //     errorMessage = NetworkExceptionErrorType.sendTimeout.message;
  //   }, unableToProcess: () {
  //     errorMessage = NetworkExceptionErrorType.unableToProcess.message;
  //   }, defaultError: (String error) {
  //     errorMessage = error;
  //   }, formatException: () {
  //     errorMessage = NetworkExceptionErrorType.formatException.message;
  //   }, notAcceptable: () {
  //     errorMessage = NetworkExceptionErrorType.notAcceptable.message;
  //   });
  //   return errorMessage;
  // }
}

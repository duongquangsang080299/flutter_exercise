import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:soccer_club_app/core/constant/app_exceptions.dart';

class ErrorException extends Equatable implements Exception {
  final String? message;

  const ErrorException({required this.message});

  @override
  List<Object?> get props => [message];
}

class FetchDataException extends ErrorException {
  const FetchDataException([message]) : super(message: message);
}

class BadRequestException extends ErrorException {
  const BadRequestException([message]) : super(message: message);
}

class UnauthorizedException extends ErrorException {
  const UnauthorizedException([message]) : super(message: message);
}

class NotFoundException extends ErrorException {
  const NotFoundException([message]) : super(message: message);
}

class ConflictException extends ErrorException {
  const ConflictException([message]) : super(message: message);
}

class InternalServerErrorException extends ErrorException {
  const InternalServerErrorException([message]) : super(message: message);
}

class NoInternetConnectionException extends ErrorException {
  const NoInternetConnectionException([message]) : super(message: message);
}

class CacheException extends ErrorException {
  const CacheException([message]) : super(message: message);
}

class AppException implements Exception {
  final AppExceptionType type;
  final dynamic response;

  AppException(this.type, {this.response});

  String get errorMessage {
    switch (type) {
      case AppExceptionType.connectionTimeout:
        return AppExceptionMessages.connectionTimeout;

      case AppExceptionType.sendTimeout:
        return AppExceptionMessages.sendTimeout;

      case AppExceptionType.receiveTimeout:
        return AppExceptionMessages.receiveTimeout;

      case AppExceptionType.unknown:
        return AppExceptionMessages.unknown;

      case AppExceptionType.connectionError:
        return AppExceptionMessages.connectionError;

      case AppExceptionType.cancel:
        return AppExceptionMessages.cancel;

      case AppExceptionType.badCertificate:
        return AppExceptionMessages.badCertificate;

      case AppExceptionType.badResponse:
        try {
          int? errorCode = response?.statusCode;
          switch (errorCode) {
            case 400:
              return AppExceptionMessages.badRequest;

            case 401:
              return AppExceptionMessages.unauthorized;

            case 403:
              return AppExceptionMessages.forbidden;

            case 404:
              return AppExceptionMessages.notFound;

            case 405:
              return AppExceptionMessages.methodNotAllowed;

            case 500:
              return AppExceptionMessages.internalServerError;

            case 502:
              return AppExceptionMessages.badGateway;

            case 503:
              return AppExceptionMessages.serviceUnavailable;

            case 505:
              return AppExceptionMessages.httpNotSupport;

            default:
              return AppExceptionMessages.unknownMistake;
          }
        } catch (_) {
          return AppExceptionMessages.unknownError;
        }

      default:
        return AppExceptionMessages.unknownError;
    }
  }
}

class AppBaseResponse {
  final Response response;

  AppBaseResponse(this.response);

  int get statusCode =>
      response.statusCode ?? 0; // Default value or handle accordingly
  dynamic get data => response.data;
}

enum AppExceptionType {
  connectionTimeout,
  sendTimeout,
  receiveTimeout,
  unknown,
  connectionError,
  cancel,
  badCertificate,
  badResponse,
}

void processResponse(AppBaseResponse response) {
  if (response.statusCode == 401) {
    throw const UnauthorizedException();
  } else if (response.statusCode >= 400 && response.statusCode < 600) {
    throw AppException(AppExceptionType.badResponse, response: response);
  }
}

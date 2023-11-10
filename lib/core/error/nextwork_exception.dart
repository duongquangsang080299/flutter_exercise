import 'dart:io';

class NetworkException {
  String getMessage(error) {
    if (error == null) {
      return 'Unknown error occurred.';
    } else if (error is SocketException) {
      return 'No internet connection.';
    } else if (error is HttpException) {
      return 'HTTP error occurred.';
    } else if (error is FormatException) {
      return 'Invalid data format.';
    } else if (error is BadRequestException) {
      return error.message;
    } else if (error is UnauthorizedException) {
      return error.message;
    } else if (error is NotFoundException) {
      return error.message;
    } else if (error is FetchDataException) {
      return error.message;
    } else {
      return 'Unknown error occurred.';
    }
  }
}

class AppException implements Exception {
  late final String message;
  late final String prefix;
  late final String url;

  AppException({this.message = '', this.prefix = '', this.url = ''});
}

class BadRequestException extends AppException {
  BadRequestException({String? message, String? url})
      : super(
            message: message ?? 'Bad request',
            prefix: 'Bad request',
            url: url ?? '');
}

class FetchDataException extends AppException {
  FetchDataException({String? message, String? url})
      : super(
          message: message ?? 'Unable to process the request',
          prefix: 'Unable to process the request',
          url: url ?? '',
        );
}

class ApiNotRespondingException extends AppException {
  ApiNotRespondingException({String? message, String? url})
      : super(
            message: message ?? 'Api not responding',
            prefix: 'Api not responding',
            url: url ?? '');
}

class UnauthorizedException extends AppException {
  UnauthorizedException({String? message, String? url})
      : super(
            message: message ?? 'Unauthorized request',
            prefix: 'Unauthorized request',
            url: url ?? '');
}

class NotFoundException extends AppException {
  NotFoundException({String? message, String? url})
      : super(
            message: message ?? 'Page not found',
            prefix: 'Page not found',
            url: url ?? '');
}

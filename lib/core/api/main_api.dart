import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:soccer_club_app/core/error/error_exception.dart';

class ApiConsumer {
  static Future<dynamic> _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return json.decode(response.body);
    } else {
      throw AppException(AppExceptionType.connectionError, response: response);
    }
  }

  static Future<dynamic> get(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      return _handleResponse(response);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  static Future<dynamic> post(String url, Map<String, dynamic> data) async {
    try {
      final response = await http.post(Uri.parse(url), body: json.encode(data));
      return _handleResponse(response);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  static Future<dynamic> put(String url, Map<String, dynamic> data) async {
    try {
      final response = await http.put(Uri.parse(url), body: json.encode(data));
      return _handleResponse(response);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  static Future<dynamic> patch(String url, Map<String, dynamic> data) async {
    try {
      final response =
          await http.patch(Uri.parse(url), body: json.encode(data));
      return _handleResponse(response);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  static Future<dynamic> delete(String url) async {
    try {
      final response = await http.delete(Uri.parse(url));
      return _handleResponse(response);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}

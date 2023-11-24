import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:soccer_club_app/core/error/error_exception.dart';

class ApiConsumer {
  // Private method to handle HTTP response
  static Future<dynamic> _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return json.decode(response.body);
    } else {
      throw AppException(AppExceptionType.connectionError, response: response);
    }
  }

  // Generic HTTP GET method
  static Future<dynamic> get(String url, {String? apiKey}) async {
    try {
      // Include the API key in the headers if provided
      final headers = apiKey != null ? {'apiKey': apiKey} : null;

      final response = await http.get(Uri.parse(url), headers: headers);
      return _handleResponse(response);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  // Generic HTTP POST method
  static Future<dynamic> post(String url, Map<String, dynamic> data) async {
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(data),
          headers: {'Content-Type': 'application/json'});
      return _handleResponse(response);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  // Generic HTTP PUT method
  static Future<dynamic> put(String url, Map<String, dynamic> data) async {
    try {
      final response = await http.put(Uri.parse(url),
          body: json.encode(data),
          headers: {'Content-Type': 'application/json'});
      return _handleResponse(response);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  // Generic HTTP PATCH method
  static Future<dynamic> patch(String url, Map<String, dynamic> data) async {
    try {
      final response = await http.patch(Uri.parse(url),
          body: json.encode(data),
          headers: {'Content-Type': 'application/json'});
      return _handleResponse(response);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  // Generic HTTP DELETE method
  static Future<dynamic> delete(String url) async {
    try {
      final response = await http.delete(Uri.parse(url));
      return _handleResponse(response);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}

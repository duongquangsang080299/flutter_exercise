import 'package:http/http.dart' as http;
import 'package:soccer_club_app/core/error/error_exception.dart';

class EndPointApi {
  static Future<String> fetchData(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw AppException(AppExceptionType.badResponse, response: response);
      }
    } catch (e) {
      throw AppException(AppExceptionType.connectionError);
    }
  }

  static Future<void> addData(String url, Map<String, dynamic> data) async {
    try {
      final response = await http.post(Uri.parse(url), body: data);
      if (response.statusCode != 201) {
        throw AppException(AppExceptionType.badResponse, response: response);
      }
    } catch (e) {
      throw AppException(AppExceptionType.connectionError);
    }
  }

  static Future<void> updateData(String url, Map<String, dynamic> data) async {
    try {
      final response = await http.put(Uri.parse(url), body: data);
      if (response.statusCode != 200) {
        throw AppException(AppExceptionType.badResponse, response: response);
      }
    } catch (e) {
      throw AppException(AppExceptionType.connectionError);
    }
  }

  static Future<void> deleteData(String url) async {
    try {
      final response = await http.delete(Uri.parse(url));
      if (response.statusCode != 200) {
        throw AppException(AppExceptionType.badResponse, response: response);
      }
    } catch (e) {
      throw AppException(AppExceptionType.connectionError);
    }
  }
}

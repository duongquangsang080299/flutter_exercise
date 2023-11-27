import 'package:dio/dio.dart';
import 'package:soccer_club_app/core/constant/apis.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';

class MainApi {
  final Dio _dio = Dio();

  Future<dynamic> get(String url,
      {String? apiKey, Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _dio.get(
        url,
        options: Options(
          headers: {'apikey': apiKey = Apis.apiKey},
        ),
        queryParameters: queryParams,
      );

      // Check if the response is successful
      if (response.statusCode == 200) {
        return response;
      } else {
        throw ErrorException(
            message: 'Failed to load data. Status code ${response.statusCode}');
      }
    } catch (e) {
      throw ErrorException(message: 'Failed to make the request: $e');
    }
  }
}

import 'package:dio/dio.dart';

class ApiConsumer {
  final Dio _dio = Dio();

  Future<dynamic> get(String url, {String? apiKey}) async {
    try {
      final response = await _dio.get(
        url,
        options: Options(
          headers: {'apikey': apiKey},
        ),
      );

      // Check if the response is successful
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception(
            'Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to make the request: $e');
    }
  }
}

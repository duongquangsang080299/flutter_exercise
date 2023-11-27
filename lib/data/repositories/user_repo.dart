import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api_key.dart';
import 'package:soccer_club_app/data/models/user_model/user_model.dart';

class UserRepository {
  final ApiConsumer apiConsumer = ApiConsumer();

  Future<List<UserModel>> fetchUserData({String apiKey = ApiKey.apiKey}) async {
    try {
      const String apiUrl =
          'https://olttmjkegsnbhrupogiu.supabase.co/rest/v1/user';
      final response = await apiConsumer.get(apiUrl, apiKey: apiKey);

      // processResponse(response);

      final List<UserModel> userModel = (response.data as List<dynamic>)
          .map((e) => UserModel.fromJson(e))
          .toList();
      return userModel;
    } catch (e) {
      throw Exception('Failed to fetch User data: $e');
    }
  }
}

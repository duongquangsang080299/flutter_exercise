import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api_key.dart';
import 'package:soccer_club_app/presentations/view_models/home/home_view_models.dart';

class HomeRepository {
  final ApiConsumer apiConsumer = ApiConsumer();
  Future<HomeViewModel> fetchHomeData({String apiKey = ApiKey.apiKey}) async {
    try {
      const String apiUrl =
          'https://olttmjkegsnbhrupogiu.supabase.co/rest/v1/home';

      final dynamic responseData =
          await ApiConsumer.get(apiUrl, apiKey: apiKey);

      final HomeViewModel homeViewModel = HomeViewModel.fromJson(responseData);
      return homeViewModel;
    } catch (e) {
      throw Exception('Failed to fetch home data: $e');
    }
  }
}

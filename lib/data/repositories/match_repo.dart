import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api_key.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';

class MatchRepository {
  final ApiConsumer apiConsumer = ApiConsumer();

  Future<List<MatchModel>> fetchMatchData(
      {String apiKey = ApiKey.apiKey}) async {
    try {
      const String apiUrl =
          'https://olttmjkegsnbhrupogiu.supabase.co/rest/v1/match';
      final response = await apiConsumer.get(apiUrl, apiKey: apiKey);

      final List<MatchModel> matchModel = (response.data as List<dynamic>)
          .map((e) => MatchModel.fromJson(e))
          .toList();
      return matchModel;
    } catch (e) {
      throw Exception('Failed to fetch match data: $e');
    }
  }
}

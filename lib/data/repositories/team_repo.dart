import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api_key.dart';
import 'package:soccer_club_app/data/models/team/team_model.dart';

class TeamRepository {
  final ApiConsumer apiConsumer = ApiConsumer();

  Future<List<TeamModel>> fetchTeamData({String apiKey = ApiKey.apiKey}) async {
    try {
      const String apiUrl =
          'https://olttmjkegsnbhrupogiu.supabase.co/rest/v1/team';
      final response = await apiConsumer.get(apiUrl, apiKey: apiKey);

      final List<TeamModel> teamsModel = (response.data as List<dynamic>)
          .map((e) => TeamModel.fromJson(e))
          .toList();
      return teamsModel;
    } catch (e) {
      throw Exception('Failed to fetch team data: $e');
    }
  }
}

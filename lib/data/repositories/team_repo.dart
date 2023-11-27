import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/team/team_model.dart';

class TeamRepository {
  final MainApi mainApi = MainApi();

  Future<List<TeamModel>> getTeams({Map<String, dynamic>? queryParams}) async {
    try {
      const String apiUrl = '${Apis.basedUrl}/team';
      final response = await mainApi.get(apiUrl, queryParams: queryParams);

      final List<TeamModel> teamsModel = (response.data as List<dynamic>)
          .map((e) => TeamModel.fromJson(e))
          .toList();
      return teamsModel;
    } catch (e) {
      throw ErrorException(message: 'Failed to fetch match data: $e');
    }
  }
}

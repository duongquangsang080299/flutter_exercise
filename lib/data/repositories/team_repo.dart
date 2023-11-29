import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/team/team_model.dart';

/// Handler Team Repository related data
class TeamRepository {
  // Making API calls related to team
  final MainApi mainApi = MainApi();
  // Takes an optional map of query parameters
  Future<TeamModel> getTeams({Map<String, dynamic>? queryParams}) async {
    try {
      // Construct the API endpoint URL for team
      const String apiUrl = '${Apis.basedUrl}team';
      // Make a GET request to the API using the MainApi instance
      final List<dynamic> response = await mainApi.get(
        apiUrl,
        queryParams: queryParams,
      );
      // Convert the dynamic response into a list of TeamModel objects.
      final List<TeamModel> teams =
          response.map((e) => TeamModel.fromJson(e)).toList();
      return teams.first;
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}

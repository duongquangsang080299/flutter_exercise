import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/team/team_model.dart';

class TeamRepository {
  final MainApi mainApi = MainApi();

  Future<TeamModel> getTeams({Map<String, dynamic>? queryParams}) async {
    try {
      const String apiUrl = '${Apis.basedUrl}team';
      final List<dynamic> response = await mainApi.get(
        apiUrl,
        queryParams: queryParams,
      );

      final List<TeamModel> teams =
          response.map((e) => TeamModel.fromJson(e)).toList();
      return teams.first;
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}

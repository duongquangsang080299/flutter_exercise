import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';

class MatchRepository {
  final MainApi mainApi = MainApi();

  Future<List<MatchModel>> getMatchs(
      {Map<String, dynamic>? queryParams}) async {
    try {
      const String apiUrl = '${Apis.basedUrl}/match';
      final response = await mainApi.get(apiUrl, queryParams: queryParams);

      final List<MatchModel> matchModels = (response.data as List<dynamic>)
          .map((e) => MatchModel.fromJson(e))
          .toList();
      return matchModels;
    } catch (e) {
      throw ErrorException(message: 'Failed to fetch match data: $e');
    }
  }

  Future<MatchModel> getMatch({Map<String, dynamic>? queryParams}) async {
    try {
      const String apiUrl = '${Apis.basedUrl}/match';
      final response = await mainApi.get(apiUrl, queryParams: queryParams);

      final MatchModel matchModel = MatchModel.fromJson(response.data);
      return matchModel;
    } catch (e) {
      throw ErrorException(message: 'Failed to fetch match details: $e');
    }
  }
}

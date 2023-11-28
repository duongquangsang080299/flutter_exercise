import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';

class MatchRepository {
  final MainApi mainApi = MainApi();

  Future<List<MatchModel>> getMatchs(
      {Map<String, dynamic>? queryParams}) async {
    try {
      const String apiUrl = '${Apis.basedUrl}match';
      final List<dynamic> response =
          await mainApi.get(apiUrl, queryParams: {'select': '*,goals(*)'});
      print(response);
      final List<MatchModel> matchs =
          response.map((e) => MatchModel.fromJson(e)).toList();
      return matchs;
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  Future<MatchModel> getMatch({Map<String, dynamic>? queryParams}) async {
    try {
      const String apiUrl = '${Apis.basedUrl}match';
      final response =
          await mainApi.get(apiUrl, queryParams: {'select': '*,limit(*)'});
      print(response);

      final MatchModel match = MatchModel.fromJson(response);
      return match;
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}

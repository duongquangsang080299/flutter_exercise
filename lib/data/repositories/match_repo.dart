import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/apis.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';

/// Handler Match Repository related data
class MatchRepository {
  // Making API calls related to match
  final MainApi mainApi = MainApi();
  // Takes an optional map of query parameters
  Future<List<MatchModel>> getMatches() async {
    try {
      // Construct the API endpoint URL for match
      const String apiUrl = '${Apis.basedUrl}match';
      // Make a GET request to the API using the MainApi instance
      final List<dynamic> response = await mainApi.get(
        apiUrl,
        queryParams: {'select': '*,goals(*)'},
      );
      // Convert the dynamic response into a list of MatchModel objects.
      final List<MatchModel> matches =
          response.map((e) => MatchModel.fromJson(e)).toList();
      return matches;
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  Future<MatchModel> getMatch() async {
    try {
      // Construct the API endpoint URL for match
      const String apiUrl = '${Apis.basedUrl}match';
      // Make a GET request to the API using the MainApi instance
      final List<dynamic> response = await mainApi.get(
        apiUrl,
        queryParams: {'select': '*', 'limit': '1'},
      );
      // Convert the dynamic response into a list of MatchModel objects.
      final List<MatchModel> match =
          response.map((e) => MatchModel.fromJson(e)).toList();
      return match.first;
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}

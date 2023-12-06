import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/apis.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/goal/goal_model.dart';

/// Handler Goal Repository related data
class GoalsRepository {
  // Making API calls related to goal
  final MainApi mainApi = MainApi();
  // Takes an optional map of query parameters
  Future<List<GoalsModel>> getListGoals() async {
    try {
      // Construct the API endpoint URL for goal
      const String apiUrl = '${Apis.basedUrl}goals';
      // Make a GET request to the API using the MainApi instance
      final List<dynamic> response = await mainApi.get(
        apiUrl,
        queryParams: {'select': '*,team(*)'},
      );

      // Convert the dynamic response into a list of GoalsModel objects.
      final List<GoalsModel> goals =
          response.map((e) => GoalsModel.fromJson(e)).toList();

      return goals;
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}

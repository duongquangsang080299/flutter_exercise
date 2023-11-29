import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/goal/goal_model.dart';

class GoalsRepository {
  final MainApi mainApi = MainApi();

  Future<List<GoalsModel>> getListGoals(
      {Map<String, dynamic>? queryParams}) async {
    try {
      const String apiUrl = '${Apis.basedUrl}goal';
      final List<dynamic> response = await mainApi.get(
        apiUrl,
        queryParams: {'select': '*,team(*)'},
      );

      final List<GoalsModel> goals =
          response.map((e) => GoalsModel.fromJson(e)).toList();

      return goals;
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}

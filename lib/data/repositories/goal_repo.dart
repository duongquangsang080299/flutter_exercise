import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/goal/goal_model.dart';

class GoalsRepository {
  final MainApi mainApi;

  GoalsRepository({required this.mainApi});

  Future<List<GoalsModel>> getListGoals(
      {Map<String, dynamic>? queryParams}) async {
    try {
      const String apiUrl = '${Apis.basedUrl}/goal';
      final responseData = await mainApi.get(apiUrl, queryParams: queryParams);

      final List<GoalsModel> goals =
          responseData.map((e) => GoalsModel.fromJson(e)).toList();

      return goals;
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}

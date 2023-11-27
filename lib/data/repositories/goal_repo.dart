import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api_key.dart';
import 'package:soccer_club_app/data/models/goal/goal_model.dart';

class GoalsRepository {
  final ApiConsumer apiConsumer;

  GoalsRepository({required this.apiConsumer});

  Future<List<GoalsModel>> fetchGoalsData() async {
    try {
      const String apiUrl =
          'https://olttmjkegsnbhrupogiu.supabase.co/rest/v1/goal';
      final responseData = await apiConsumer.get(apiUrl, apiKey: ApiKey.apiKey);

      final List<GoalsModel> goals =
          responseData.map((e) => GoalsModel.fromJson(e)).toList();

      return goals;
    } catch (e) {
      throw Exception('Failed to fetch goals data: $e');
    }
  }
}

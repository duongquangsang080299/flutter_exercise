import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api_key.dart';
import 'package:soccer_club_app/data/models/ticket/ticket_model.dart';

class TicketsRepository {
  final ApiConsumer apiConsumer = ApiConsumer();

  Future<List<TicketModel>> fetchTicketData(
      {String apiKey = ApiKey.apiKey}) async {
    try {
      const String apiUrl =
          'https://olttmjkegsnbhrupogiu.supabase.co/rest/v1/ticket';
      final response = await apiConsumer.get(apiUrl, apiKey: ApiKey.apiKey);

      final List<TicketModel> ticket = (response.data as List<dynamic>)
          .map((e) => TicketModel.fromJson(e))
          .toList();
      return ticket;
    } catch (e) {
      throw Exception('Failed to fetch ticket data: $e');
    }
  }
}

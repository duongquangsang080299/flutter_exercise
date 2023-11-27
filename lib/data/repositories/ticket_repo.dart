import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/ticket/ticket_model.dart';

class TicketsRepository {
  final MainApi mainApi = MainApi();

  Future<TicketModel> getTicket({Map<String, dynamic>? queryParams}) async {
    try {
      const String apiUrl = '${Apis.basedUrl}/ticket';
      final response = await mainApi.get(apiUrl, queryParams: queryParams);

      final TicketModel tickets =
          (response.data).map((e) => TicketModel.fromJson(e)).toList();
      return tickets;
    } catch (e) {
      throw ErrorException(message: 'Failed to fetch match data: $e');
    }
  }
}

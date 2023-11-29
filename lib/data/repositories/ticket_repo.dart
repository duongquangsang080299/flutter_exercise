import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/ticket/ticket_model.dart';

/// Handler Ticket Repository related data
class TicketRepository {
  // Making API calls related to tickets
  final MainApi mainApi = MainApi();
  // Takes an optional map of query parameters
  Future<TicketModel> getTicket({Map<String, dynamic>? queryParams}) async {
    try {
      // Construct the API endpoint URL for ticket
      const String apiUrl = '${Apis.basedUrl}ticket';
      // Make a GET request to the API using the MainApi instance
      final List<dynamic> response = await mainApi.get(
        apiUrl,
        queryParams: queryParams,
      );
      // Convert the dynamic response into a list of TicketModel objects.
      final List<TicketModel> tickets =
          response.map((e) => TicketModel.fromJson(e)).toList();

      return tickets.first;
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}

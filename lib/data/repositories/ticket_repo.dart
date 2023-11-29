import 'package:soccer_club_app/core/api/main_api.dart';
import 'package:soccer_club_app/core/constant/api.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/ticket/ticket_model.dart';

class TicketRepository {
  final MainApi mainApi = MainApi();

  Future<TicketModel> getTicket({Map<String, dynamic>? queryParams}) async {
    try {
      const String apiUrl = '${Apis.basedUrl}ticket';
      final List<dynamic> response = await mainApi.get(
        apiUrl,
        queryParams: queryParams,
      );

      final List<TicketModel> tickets =
          response.map((e) => TicketModel.fromJson(e)).toList();

      return tickets.first;
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}

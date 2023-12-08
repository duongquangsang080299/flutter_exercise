import 'package:bloc/bloc.dart';
import 'package:soccer_club_app/blocs/home/home_event.dart';
import 'package:soccer_club_app/blocs/home/home_state.dart';
import 'package:soccer_club_app/core/constant/app_exceptions.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/data/models/ticket/ticket_model.dart';
import 'package:soccer_club_app/data/models/user/user_model.dart';
import 'package:soccer_club_app/data/repositories/auth_repo.dart';
import 'package:soccer_club_app/data/repositories/match_repo.dart';
import 'package:soccer_club_app/data/repositories/ticket_repo.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MatchRepository matchRepository = MatchRepository();
  final TicketRepository ticketRepository = TicketRepository();
  final AuthRepo authRepo = AuthRepo();
  HomeBloc({required AuthRepo authRepo}) : super(HomeInitialState(homeEmpty)) {
    on<GetNewsEvent>(_onGetNews);
    on<GetMatchEvent>(_onGetMatch);
    on<GetTicketEvent>(_onGetTicket);
    on<GetUserEvent>(_onLoadUserProfile);
  }

  Future<void> _onLoadUserProfile(
      GetUserEvent event, Emitter<HomeState> emit) async {
    try {
      emit(UserLoading(state.data));

      String? displayName = await authRepo.getUserName();
      final UserModel user = UserModel(displayName: displayName ?? '');

      emit(UserSuccess(
        state.data.copyWith(userName: user),
      ));
    } catch (e) {
      emit(HomeError(
        data: state.data,
        errorMessage: AppExceptionMessages.badRequest,
      ));
    }
  }

  Future<void> _onGetNews(GetNewsEvent event, Emitter<HomeState> emit) async {
    try {
      emit(GetNewsLoading(state.data));
      final List<MatchModel> matches = await matchRepository.getMatches();
      emit(GetNewsSuccess(state.data.copyWith(news: matches)));
    } catch (e) {
      String errorMessage;
      if (e is AppException && e.type == AppExceptionType.badResponse) {
        errorMessage = AppExceptionMessages.badGateway;
      } else {
        errorMessage = AppExceptionMessages.unknown;
      }
      emit(HomeError(
        data: state.data,
        errorMessage: errorMessage,
      ));
    }
  }

  Future<void> _onGetMatch(GetMatchEvent event, Emitter<HomeState> emit) async {
    try {
      emit(GetMatchLoading(state.data));
      final MatchModel news = await matchRepository.getMatch();

      emit(GetMatchSuccess(state.data.copyWith(nextMatch: news)));
    } catch (e) {
      String errorMessage;
      if (e is AppException && e.type == AppExceptionType.badResponse) {
        errorMessage = AppExceptionMessages.badGateway;
      } else {
        errorMessage = AppExceptionMessages.unknown;
      }
      emit(HomeError(
        data: state.data,
        errorMessage: errorMessage,
      ));
    }
  }

  Future<void> _onGetTicket(
      GetTicketEvent event, Emitter<HomeState> emit) async {
    try {
      emit(GetTicketLoading(state.data));
      final TicketModel tickets = await ticketRepository.getTicket();

      emit(GetTicketSuccess(state.data.copyWith(ticket: tickets)));
    } catch (e) {
      String errorMessage;
      if (e is AppException && e.type == AppExceptionType.badResponse) {
        errorMessage = AppExceptionMessages.badGateway;
      } else {
        errorMessage = AppExceptionMessages.unknown;
      }
      emit(HomeError(
        data: state.data,
        errorMessage: errorMessage,
      ));
    }
  }
}

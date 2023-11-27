import 'package:bloc/bloc.dart';
import 'package:soccer_club_app/blocs/home/home_event.dart';
import 'package:soccer_club_app/blocs/home/home_state.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/data/models/ticket/ticket_model.dart';
import 'package:soccer_club_app/data/repositories/match_repo.dart';
import 'package:soccer_club_app/data/repositories/ticket_repo.dart';
import 'package:soccer_club_app/data/repositories/user_repo.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final UserRepository userRepository = UserRepository();
  final MatchRepository matchRepository = MatchRepository();
  final TicketsRepository ticketsRepository = TicketsRepository();

  HomeBloc() : super(HomeInitial()) {
    on<NewsLoadDataEvent>(_onNewsLoadData);
    on<MatchLoadDataEvent>(_onMatchLoadData);
    on<TicketsLoadDataEvent>(_onTicketsLoadData);
  }

  Future<void> _onNewsLoadData(
      NewsLoadDataEvent event, Emitter<HomeState> emit) async {
    try {
      emit(const HomeLoading(dataNews: []));
      final List<MatchModel> newsData = await matchRepository.fetchMatchData();
      emit(HomeLoaded(dataNews: newsData));
    } catch (e) {
      emit(HomeError(errorMessage: 'Failed to load news data: $e'));
    }
  }

  Future<void> _onMatchLoadData(
      MatchLoadDataEvent event, Emitter<HomeState> emit) async {
    try {
      emit(const HomeLoading(dataMatch: []));
      final List<MatchModel> matches = await matchRepository.fetchMatchData();
      emit(HomeLoaded(dataMatch: matches));
    } catch (e) {
      emit(HomeError(errorMessage: 'Failed to load match data: $e'));
    }
  }

  Future<void> _onTicketsLoadData(
      TicketsLoadDataEvent event, Emitter<HomeState> emit) async {
    try {
      emit(const HomeLoading(dataTickets: []));
      final List<TicketModel> tickets =
          await ticketsRepository.fetchTicketData();
      emit(HomeLoaded(dataTickets: tickets));
    } catch (e) {
      emit(HomeError(errorMessage: 'Failed to load ticket data: $e'));
    }
  }
}

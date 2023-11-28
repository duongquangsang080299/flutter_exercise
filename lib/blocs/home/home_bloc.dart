import 'package:bloc/bloc.dart';
import 'package:soccer_club_app/blocs/home/home_event.dart';
import 'package:soccer_club_app/blocs/home/home_state.dart';
import 'package:soccer_club_app/core/constant/app_exceptions.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/data/models/ticket/ticket_model.dart';
import 'package:soccer_club_app/data/repositories/match_repo.dart';
import 'package:soccer_club_app/data/repositories/ticket_repo.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MatchRepository matchRepository = MatchRepository();
  final TicketRepository ticketsRepository = TicketRepository();

  HomeBloc() : super(HomeInitial(homeEmpty)) {
    on<GetNewsEvent>(_onGetNews);
    on<GetMatchsEvent>(_onGetMatch);
    on<GetTicketEvent>(_onGetTicket);
    on<VideoLoadingEvent>(_onVideoLoadingData);
    on<PlayVideoEvent>(_onIsPlayVideo);
    on<PauseVideoEvent>(_onIsPauseVideo);
  }

  Future<void> _onGetNews(GetNewsEvent event, Emitter<HomeState> emit) async {
    try {
      emit(GetNewsLoading(state.data));
      final MatchModel news = await matchRepository.getMatch();
      emit(GetNewsSuccess(state.data.copyWith(nextMatch: news)));
    } catch (e) {
      emit(HomeError(
        data: state.data,
        errorMessage: AppExceptionMessages.badRequest,
      ));
    }
  }

  Future<void> _onGetMatch(
      GetMatchsEvent event, Emitter<HomeState> emit) async {
    try {
      emit(GetMatchLoading(state.data));
      final List<MatchModel> matches = await matchRepository.getMatchs();
      emit(GetMatchSuccess(state.data.copyWith(news: matches)));
    } catch (e) {
      emit(HomeError(
        data: state.data,
        errorMessage: AppExceptionMessages.badRequest,

        /// FIXME:we should correct error here
      ));
    }
  }

  Future<void> _onGetTicket(
      GetTicketEvent event, Emitter<HomeState> emit) async {
    try {
      emit(GetTicketLoading(state.data));
      final TicketModel tickets = await ticketsRepository.getTicket();
      emit(GetTicketSuccess(state.data.copyWith(ticket: tickets)));
    } catch (e) {
      emit(HomeError(
        data: state.data,
        errorMessage: AppExceptionMessages.badRequest,
      ));
    }
  }

  Future<void> _onVideoLoadingData(
      VideoLoadingEvent event, Emitter<HomeState> emit) async {
    emit(HomeVideoHandler(
        data: state.data.copyWith(
      isLoading: true,
      isPause: false,
      isPlaying: false,
    )));
  }

  Future<void> _onIsPlayVideo(
      PlayVideoEvent event, Emitter<HomeState> emit) async {
    emit(HomeVideoHandler(
        data: state.data.copyWith(
      isLoading: false,
      isPause: false,
      isPlaying: true,
    )));
  }

  Future<void> _onIsPauseVideo(
      PauseVideoEvent event, Emitter<HomeState> emit) async {
    emit(HomeVideoHandler(
        data: state.data.copyWith(
      isLoading: false,
      isPause: true,
      isPlaying: false,
    )));
  }
}

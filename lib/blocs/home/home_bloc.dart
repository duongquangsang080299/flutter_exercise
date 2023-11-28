import 'package:bloc/bloc.dart';
import 'package:soccer_club_app/blocs/home/home_event.dart';
import 'package:soccer_club_app/blocs/home/home_state.dart';
import 'package:soccer_club_app/core/constant/app_exceptions.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/data/repositories/match_repo.dart';
import 'package:soccer_club_app/data/repositories/ticket_repo.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MatchRepository matchRepository = MatchRepository();
  final TicketRepository ticketsRepository = TicketRepository();

  HomeBloc() : super(HomeInitial(homeEmpty)) {
    on<NewsLoadDataEvent>(_onNewsLoadData);
    on<GetMatchsEvent>(_onGetMatch);
    on<TicketsLoadDataEvent>(_onTicketsLoadData);
    on<VideoLoadingEvent>(_onVideoLoadingData);
    on<PlayVideoEvent>(_onIsPlayVideo);
    on<PauseVideoEvent>(_onIsPauseVideo);
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

  Future<void> _onNewsLoadData(
      NewsLoadDataEvent event, Emitter<HomeState> emit) async {
    // try {
    //   emit(const HomeLoading());
    //   final MatchModel newsData = await matchRepository.getMatch();
    //   emit(HomeLoaded(dataNews: newsData));
    // } catch (e) {
    //   emit(HomeError(errorMessage: 'Failed to load news data: $e'));
    // }
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

  Future<void> _onTicketsLoadData(
      TicketsLoadDataEvent event, Emitter<HomeState> emit) async {
    // try {
    //   emit(const HomeLoading());
    //   final TicketModel tickets = await ticketsRepository.getTicket();
    //   emit(HomeLoaded(dataTickets: tickets));
    // } catch (e) {
    //   emit(HomeError(errorMessage: 'Failed to load ticket data: $e'));
    // }
  }
}

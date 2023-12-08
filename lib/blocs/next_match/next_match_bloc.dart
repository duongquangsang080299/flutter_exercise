import 'package:bloc/bloc.dart';
import 'package:soccer_club_app/blocs/next_match/next_match_event.dart';
import 'package:soccer_club_app/blocs/next_match/next_match_state.dart';
import 'package:soccer_club_app/core/constant/app_exceptions.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/data/repositories/match_repo.dart';

class MatchDetailBloc extends Bloc<MatchDetailEvent, MatchDetailState> {
  final MatchRepository matchRepository = MatchRepository();

  MatchDetailBloc() : super(MatchDetailInitialState(matchEmpty)) {
    on<GetMatchDetailEvent>(_onGetMatchDetail);
    on<GetListMatchEvent>(_onGetList);
  }

  Future<void> _onGetMatchDetail(
      GetMatchDetailEvent event, Emitter<MatchDetailState> emit) async {
    try {
      emit(GetMatchDetailLoading(state.data));
      final MatchModel news = await matchRepository.getMatch();

      emit(GetMatchDetailSuccess(state.data.copyWith(match: news)));
    } catch (e) {
      String errorMessage;
      if (e is AppException && e.type == AppExceptionType.badResponse) {
        errorMessage = AppExceptionMessages.badGateway;
      } else {
        errorMessage = AppExceptionMessages.unknown;
      }
      emit(MatchDetailError(
        data: state.data,
        errorMessage: errorMessage,
      ));
    }
  }

  Future<void> _onGetList(
      GetListMatchEvent event, Emitter<MatchDetailState> emit) async {
    try {
      emit(GetListMatchLoading(state.data));
      final List<MatchModel> matches = await matchRepository.getMatches();

      emit(GetListMatchSuccess(state.data.copyWith(listHistory: matches)));
    } catch (e) {
      String errorMessage;
      if (e is AppException && e.type == AppExceptionType.badResponse) {
        errorMessage = AppExceptionMessages.badGateway;
      } else {
        errorMessage = AppExceptionMessages.unknown;
      }
      emit(MatchDetailError(
        data: state.data,
        errorMessage: errorMessage,
      ));
    }
  }
}

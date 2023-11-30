import 'package:bloc/bloc.dart';
import 'package:soccer_club_app/blocs/next_match/match_detail_event.dart';
import 'package:soccer_club_app/blocs/next_match/match_detail_state.dart';
import 'package:soccer_club_app/core/constant/app_exceptions.dart';
import 'package:soccer_club_app/data/models/goal/goal_model.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/data/repositories/goal_repo.dart';
import 'package:soccer_club_app/data/repositories/match_repo.dart';

class NextMatchBloc extends Bloc<MatchDetailEvent, MatchDetailState> {
  final MatchRepository matchRepository = MatchRepository();
  final GoalsRepository goalsRepository = GoalsRepository();

  NextMatchBloc() : super(MatchDetailInitialState(matchEmpty)) {
    on<GetMatchDetailEvent>(_onGetMatchDetail);
    on<GetGoalEvent>(_onGetGoal);
  }

  Future<void> _onGetMatchDetail(
      GetMatchDetailEvent event, Emitter<MatchDetailState> emit) async {
    try {
      emit(GetMatchDetailLoading(state.data));
      final MatchModel news = await matchRepository.getMatch();

      emit(GetMatchDetailSuccess(state.data.copyWith(match: news)));
    } catch (e) {
      emit(MatchDetailError(
        data: state.data,
        errorMessage: AppExceptionMessages.badRequest,

        /// FIXME:we should correct error here
      ));
    }
  }

  Future<void> _onGetGoal(
      GetGoalEvent event, Emitter<MatchDetailState> emit) async {
    try {
      emit(GetGoalLoading(state.data));
      final List<GoalsModel> goal = await goalsRepository.getListGoals();

      emit(GetGoalSuccess(state.data.copyWith(goalsMatch: goal)));
    } catch (e) {
      emit(MatchDetailError(
        data: state.data,
        errorMessage: AppExceptionMessages.badRequest,

        /// FIXME:we should correct error here
      ));
    }
  }
}

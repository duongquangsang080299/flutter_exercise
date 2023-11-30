import 'package:equatable/equatable.dart';
import 'package:soccer_club_app/presentations/view_models/next_match/match_detail_view_model.dart';

MatchDetailViewModel matchEmpty = const MatchDetailViewModel();

abstract class MatchDetailState extends Equatable {
  final MatchDetailViewModel data;
  const MatchDetailState(
    this.data,
  ) : super();

  @override
  List<Object> get props => [];
}

class MatchDetailInitialState extends MatchDetailState {
  const MatchDetailInitialState(this.data) : super(data);

  @override
  final MatchDetailViewModel data;
}

class GetMatchDetailLoading extends MatchDetailState {
  const GetMatchDetailLoading(this.data) : super(data);

  @override
  final MatchDetailViewModel data;
}

class GetMatchDetailSuccess extends MatchDetailState {
  const GetMatchDetailSuccess(this.data) : super(data);

  @override
  final MatchDetailViewModel data;
}

class GetGoalLoading extends MatchDetailState {
  const GetGoalLoading(this.data) : super(data);

  @override
  final MatchDetailViewModel data;
}

class GetGoalSuccess extends MatchDetailState {
  const GetGoalSuccess(this.data) : super(data);

  @override
  final MatchDetailViewModel data;
}

class MatchDetailError extends MatchDetailState {
  final String errorMessage;

  const MatchDetailError({
    required this.errorMessage,
    required this.data,
  }) : super(data);

  @override
  final MatchDetailViewModel data;

  @override
  List<Object> get props => [errorMessage, data];
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/goal/goal_model.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';

part 'next_match_view_models.freezed.dart';
part 'next_match_view_models.g.dart';

@freezed

/// NextMatchView model
class NextMatchViewModel with _$NextMatchViewModel {
  const factory NextMatchViewModel({
    required MatchModel nextMatch,
    required GoalModel goalMatch,
  }) = _NextMatchViewModel;

  factory NextMatchViewModel.fromJson(Map<String, dynamic> json) =>
      _$NextMatchViewModelFromJson(json);
}

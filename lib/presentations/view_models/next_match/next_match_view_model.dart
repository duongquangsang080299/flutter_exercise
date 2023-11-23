import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/goal/goal_model.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';

part 'next_match_view_model.freezed.dart';
part 'next_match_view_model.g.dart';

@freezed

/// MatchDetailView model
class MatchDetailViewModel with _$MatchDetailViewModel {
  const factory MatchDetailViewModel({
    required MatchModel matchDetail,
    required GoalsModel goalMatch,
  }) = _MatchDetailViewModel;

  factory MatchDetailViewModel.fromJson(Map<String, dynamic> json) =>
      _$MatchDetailViewModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';

part 'match_detail_view_model.freezed.dart';
part 'match_detail_view_model.g.dart';

@freezed

/// MatchDetailView model
class MatchDetailViewModel with _$MatchDetailViewModel {
  const factory MatchDetailViewModel({
    MatchModel? match,
    List<MatchModel>? listHistory,
  }) = _MatchDetailViewModel;

  factory MatchDetailViewModel.fromJson(Map<String, dynamic> json) =>
      _$MatchDetailViewModelFromJson(json);
}

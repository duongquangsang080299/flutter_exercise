import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/team/team_model.dart';

part 'goal_model.freezed.dart';
part 'goal_model.g.dart';

@freezed
class GoalsModel with _$GoalsModel {
  const factory GoalsModel({
    required int id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'team_red') required int teamRed,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'team_victory') required int teamVictory,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'score_red') required int scoreRed,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'score_victory') required int scoreVictory,
    @Default('') String? logo,
    TeamModel? team,
  }) = _GoalsModel;

  factory GoalsModel.fromJson(Map<String, Object?> json) =>
      _$GoalsModelFromJson(json);
}

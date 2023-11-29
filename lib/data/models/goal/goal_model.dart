import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal_model.freezed.dart';
part 'goal_model.g.dart';

@freezed
class GoalsModel with _$GoalsModel {
  const factory GoalsModel({
    required int id,
    @JsonKey(name: 'team_red') required int teamRed,
    @JsonKey(name: 'team_victory') required int teamVictory,
    @JsonKey(name: 'score_red') required int scoreRed,
    @JsonKey(name: 'score_victory') required int scoreVictory,
  }) = _GoalsModel;

  factory GoalsModel.fromJson(Map<String, Object?> json) =>
      _$GoalsModelFromJson(json);
}

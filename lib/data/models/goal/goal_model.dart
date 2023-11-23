import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal_model.freezed.dart';
part 'goal_model.g.dart';

@freezed
class GoalsModel with _$GoalsModel {
  const factory GoalsModel({
    required String id,
    @JsonKey(name: 'team_red') required String teamRed,
    @JsonKey(name: 'team_victory') required String teamVictory,
    @JsonKey(name: 'score_Red') required int scoreRed,
    @JsonKey(name: 'score_Victory') required int scoreVictory,
  }) = _GoalsModel;

  factory GoalsModel.fromJson(Map<String, Object?> json) =>
      _$GoalsModelFromJson(json);
}

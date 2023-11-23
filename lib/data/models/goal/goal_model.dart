import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/team/team_model.dart';

part 'goal_model.freezed.dart';
part 'goal_model.g.dart';

@freezed
class GoalModel with _$GoalModel {
  const factory GoalModel({
    required String id,
    required TeamModel teamRed,
    required TeamModel teamVictory,
    required int scoreRed,
    required int scoreVictory,
  }) = _GoalModel;

  factory GoalModel.fromJson(Map<String, Object?> json) =>
      _$GoalModelFromJson(json);
}

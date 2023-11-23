import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/team/team_model.dart';

part 'goal_model.freezed.dart';
part 'goal_model.g.dart';

@freezed
class GoalsModel with _$GoalsModel {
  const factory GoalsModel({
    required String id,
    required TeamModel teamRed,
    required TeamModel teamVictory,
    required String score,
  }) = _GoalsModel;

  factory GoalsModel.fromJson(Map<String, Object?> json) =>
      _$GoalsModelFromJson(json);
}

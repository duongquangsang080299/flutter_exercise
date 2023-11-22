import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/goal/goal_model.dart';

part 'match_model.freezed.dart';
part 'match_model.g.dart';

@freezed
class MatchModel with _$MatchModel {
  const factory MatchModel({
    required String id,
    required String place,
    required DateTime datetime,
    required String league,
    required GoalModel goal,
    @Default(' ') String? video,
  }) = _MatchModel;

  factory MatchModel.fromJson(Map<String, Object?> json) =>
      _$MatchModelFromJson(json);
}

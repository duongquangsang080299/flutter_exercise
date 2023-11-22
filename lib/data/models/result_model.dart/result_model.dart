import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/team/team_model.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@freezed
class ResultModel with _$ResultModel {
  const factory ResultModel({
    required String id,
    required TeamModel teamRed,
    required TeamModel teamVictory,
    required String result,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, Object?> json) =>
      _$ResultModelFromJson(json);
}

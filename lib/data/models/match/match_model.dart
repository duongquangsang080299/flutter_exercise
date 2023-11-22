import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/histotry/history_model.dart';
import 'package:soccer_club_app/data/models/team/team_model.dart';

part 'match_model.freezed.dart';
part 'match_model.g.dart';

@freezed
class MatchModel with _$MatchModel {
  const factory MatchModel({
    required String id,
    required String location,
    required DateTime dateTime,
    required TeamModel teamHome,
    required TeamModel teamAway,
    required String description,
    required String video,
    required String result,
    required HistoryModel history,
  }) = _MatchModel;

  factory MatchModel.fromJson(Map<String, Object?> json) =>
      _$MatchModelFromJson(json);
}

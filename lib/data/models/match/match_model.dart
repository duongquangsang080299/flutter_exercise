import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/result_model.dart/result_model.dart';

part 'match_model.freezed.dart';
part 'match_model.g.dart';

@freezed
class MatchModel with _$MatchModel {
  const factory MatchModel({
    required String id,
    required String location,
    required DateTime dayofMatch,
    required String leagueTitle,
    required ResultModel resultOfMatch,
    String? video,
    String? image,
  }) = _MatchModel;

  factory MatchModel.fromJson(Map<String, Object?> json) =>
      _$MatchModelFromJson(json);
}

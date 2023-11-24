import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_model.freezed.dart';
part 'match_model.g.dart';

@freezed
class MatchModel with _$MatchModel {
  const factory MatchModel({
    required String id,
    required String place,
    required DateTime datetime,
    required String league,
    @JsonKey(name: 'goals_id') required String goal,
    @Default(' ') String? video,
  }) = _MatchModel;

  factory MatchModel.fromJson(Map<String, Object?> json) =>
      _$MatchModelFromJson(json);
}

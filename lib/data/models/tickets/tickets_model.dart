import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_model.freezed.dart';
part 'tickets_model.g.dart';

@freezed
class MatchModel with _$MatchModel {
  const factory MatchModel({
    required String id,
    required String image,
    required String title,
  }) = _MatchModel;

  factory MatchModel.fromJson(Map<String, Object?> json) =>
      _$MatchModelFromJson(json);
}

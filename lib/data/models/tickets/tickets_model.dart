import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_model.freezed.dart';
part 'tickets_model.g.dart';

@freezed
class TicketsModel with _$TicketsModel {
  const factory TicketsModel({
    required String id,
    required String image,
    required String title,
  }) = _TicketsModel;

  factory TicketsModel.fromJson(Map<String, Object?> json) =>
      _$TicketsModelFromJson(json);
}

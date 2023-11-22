import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';

@freezed
class TicketModel with _$TicketModel {
  const factory TicketModel({
    required String image,
    required String title,
  }) = _TicketModel;

  factory TicketModel.fromJson(Map<String, Object?> json) =>
      _$TicketModelFromJson(json);
}

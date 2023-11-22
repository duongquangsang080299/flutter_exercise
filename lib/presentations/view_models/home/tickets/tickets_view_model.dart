import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_view_model.freezed.dart';
part 'tickets_view_model.g.dart';

@freezed

/// Tickets model
class TicketsViewModel with _$TicketsViewModel {
  const factory TicketsViewModel({
    String? id,
    required String image,
    required String title,
  }) = _TicketsViewModel;

  factory TicketsViewModel.fromJson(Map<String, dynamic> json) =>
      _$TicketsViewModelFromJson(json);
}

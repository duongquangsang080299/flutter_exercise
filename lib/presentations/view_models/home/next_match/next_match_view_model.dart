import 'package:freezed_annotation/freezed_annotation.dart';

part 'next_match_view_model.freezed.dart';
part 'next_match_view_model.g.dart';

@freezed

/// NextMatchView model
class NextMatchViewModel with _$NextMatchViewModel {
  const factory NextMatchViewModel({
    String? id,
    required DateTime dateTime,
    required String descriptions,
  }) = _NextMatchViewModel;

  factory NextMatchViewModel.fromJson(Map<String, dynamic> json) =>
      _$NextMatchViewModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_match_view_model.freezed.dart';
part 'live_match_view_model.g.dart';

@freezed

/// Live MatchView model
class LiveMatchViewModel with _$LiveMatchViewModel {
  const factory LiveMatchViewModel({
    String? id,
    required String video,
  }) = _LiveMatchViewModel;

  factory LiveMatchViewModel.fromJson(Map<String, dynamic> json) =>
      _$LiveMatchViewModelFromJson(json);
}

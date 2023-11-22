import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/presentations/view_models/home/live_match/live_match_view_model.dart';
import 'package:soccer_club_app/presentations/view_models/home/news/news_view_model.dart';
import 'package:soccer_club_app/presentations/view_models/home/next_match/next_match_view_model.dart';
import 'package:soccer_club_app/presentations/view_models/home/tickets/tickets_view_model.dart';

part 'home_view_models.freezed.dart';
part 'home_view_models.g.dart';

@freezed

/// HomeView model
class HomeViewModel with _$HomeViewModel {
  const factory HomeViewModel({
    String? id,
    required String userId,
    required NextMatchViewModel nextMatch,
    required NewsViewModel news,
    required LiveMatchViewModel liveMatch,
    required TicketsViewModel tickets,
  }) = _HomeViewModel;

  factory HomeViewModel.fromJson(Map<String, dynamic> json) =>
      _$HomeViewModelFromJson(json);
}

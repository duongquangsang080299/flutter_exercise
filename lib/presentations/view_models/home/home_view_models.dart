import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/data/models/goal/goal_model.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/data/models/team/team_model.dart';
import 'package:soccer_club_app/data/models/ticket/ticket_model.dart';
import 'package:soccer_club_app/data/models/user/user_model.dart';

part 'home_view_models.freezed.dart';
part 'home_view_models.g.dart';

@freezed

/// HomeView model
class HomeViewModel with _$HomeViewModel {
  const factory HomeViewModel({
    required UserModel nameUser,
    required MatchModel match,
    required TeamModel team,
    required GoalModel goal,
    required TicketModel ticket,
  }) = _HomeViewModel;

  factory HomeViewModel.fromJson(Map<String, dynamic> json) =>
      _$HomeViewModelFromJson(json);
}

import 'package:equatable/equatable.dart';
import 'package:soccer_club_app/data/models/match/match_model.dart';
import 'package:soccer_club_app/data/models/ticket/ticket_model.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {
  final List<MatchModel>? dataNews;
  final List<TicketModel>? dataTickets;
  final List<MatchModel>? dataMatch;

  const HomeLoading({
    this.dataNews,
    this.dataTickets,
    this.dataMatch,
  });
  @override
  List<Object?> get props => [dataNews, dataTickets, dataMatch];
}

class HomeLoaded extends HomeState {
  final List<MatchModel>? dataNews;
  final List<TicketModel>? dataTickets;
  final List<MatchModel>? dataMatch;

  const HomeLoaded({
    this.dataNews,
    this.dataTickets,
    this.dataMatch,
  });

  @override
  List<Object?> get props => [dataNews, dataTickets, dataMatch];
}

class HomeError extends HomeState {
  final String errorMessage;

  const HomeError({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

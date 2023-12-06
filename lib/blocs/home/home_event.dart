import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class GetMatchEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class GetTicketEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class GetNewsEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class GetUserEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

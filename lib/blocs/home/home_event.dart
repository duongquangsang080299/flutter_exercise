part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class HomeLoadDataEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class NewLoadDataEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class MatchLoadDataEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class TicketLoadDataEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

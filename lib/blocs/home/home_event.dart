import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class HomeLoadDataEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class NewsLoadDataEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class MatchLoadDataEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class TicketsLoadDataEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

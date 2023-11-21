part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class FetchDataEvent extends HomeEvent {}

class NextMatchEvent extends HomeEvent {}

class NewsEvent extends HomeEvent {}

class LatestResultsEvent extends HomeEvent {}

class LiveMatchEvent extends HomeEvent {}

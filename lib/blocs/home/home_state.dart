part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final List data;

  const HomeLoadedState(this.data);

  @override
  List<Object> get props => [data];
}

class HomeErrorState extends HomeState {
  final String error;

  const HomeErrorState(this.error);

  @override
  List<Object> get props => [error];
}

class NextMatchState extends HomeState {}

class NewsState extends HomeState {}

class LatestResultsState extends HomeState {}

class LiveMatchState extends HomeState {}

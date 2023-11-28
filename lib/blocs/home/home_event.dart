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

class GetMatchsEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class TicketsLoadDataEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class PlayVideoEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class PauseVideoEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class VideoLoadingEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

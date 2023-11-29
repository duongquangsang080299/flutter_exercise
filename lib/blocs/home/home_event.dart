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

// ignore_for_file: overridden_fields

import 'package:equatable/equatable.dart';
import 'package:soccer_club_app/presentations/view_models/home/home_view_models.dart';

HomeViewModel homeEmpty = const HomeViewModel();

abstract class HomeState extends Equatable {
  final HomeViewModel data;

  const HomeState(
    this.data,
  ) : super();

  @override
  List<Object?> get props => [data];
}

class HomeInitial extends HomeState {
  const HomeInitial(this.data) : super(data);

  @override
  final HomeViewModel data;
}

class GetNewsSuccess extends HomeState {
  const GetNewsSuccess(this.data) : super(data);

  @override
  final HomeViewModel data;
}

class GetNewsLoading extends HomeState {
  const GetNewsLoading(this.data) : super(data);

  @override
  final HomeViewModel data;
}

class GetMatchSuccess extends HomeState {
  const GetMatchSuccess(this.data) : super(data);

  @override
  final HomeViewModel data;
}

class GetMatchLoading extends HomeState {
  const GetMatchLoading(this.data) : super(data);

  @override
  final HomeViewModel data;
}

class GetTicketSuccess extends HomeState {
  const GetTicketSuccess(this.data) : super(data);

  @override
  final HomeViewModel data;
}

class GetTicketLoading extends HomeState {
  const GetTicketLoading(this.data) : super(data);

  @override
  final HomeViewModel data;
}

class HomeError extends HomeState {
  final String errorMessage;

  const HomeError({
    required this.errorMessage,
    required this.data,
  }) : super(data);

  @override
  final HomeViewModel data;

  @override
  List<Object?> get props => [errorMessage, data];
}

class HomeVideoHandler extends HomeState {
  const HomeVideoHandler({required this.data}) : super(data);

  @override
  final HomeViewModel data;

  @override
  List<Object?> get props => [data];
}

part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoading extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoaded extends HomeState {
  final HomeViewModel homeViewModel;

  const HomeLoaded(this.homeViewModel);

  @override
  List<Object?> get props => [homeViewModel];
}

class HomeError extends HomeState {
  final String errorMessage;

  const HomeError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

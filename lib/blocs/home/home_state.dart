part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitialState extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoadedState extends HomeState {
  final HomeViewModel homeViewModel;

  const HomeLoadedState(this.homeViewModel);

  @override
  List<Object?> get props => [homeViewModel];
}

class HomeErrorState extends HomeState {
  final String errorMessage;

  const HomeErrorState(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

part of 'next_match_bloc.dart';

sealed class NextMatchState extends Equatable {
  const NextMatchState();
  
  @override
  List<Object> get props => [];
}

final class NextMatchInitial extends NextMatchState {}

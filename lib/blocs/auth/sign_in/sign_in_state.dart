part of 'sign_in_bloc.dart';

@immutable
abstract class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInLoading extends SignInState {}

final class SignInSucces extends SignInState {}

final class SignInError extends SignInState {}

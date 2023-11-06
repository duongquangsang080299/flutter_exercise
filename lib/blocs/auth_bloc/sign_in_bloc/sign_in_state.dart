part of 'sign_in_bloc.dart';

@immutable
abstract class AuthSignInState {}

final class AuthSignInInitial extends AuthSignInState {}

final class AuthSignInLoading extends AuthSignInState {}

final class AuthSignInSucces extends AuthSignInState {}

final class AuthSignInError extends AuthSignInState {}

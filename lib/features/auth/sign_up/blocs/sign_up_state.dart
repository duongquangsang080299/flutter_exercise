part of 'sign_up_bloc.dart';

@immutable
abstract class AuthSignUpState {}

final class AuthenticationInitial extends AuthSignUpState {}

final class AuthenticationSucces extends AuthSignUpState {}

final class AuthenticationError extends AuthSignUpState {}

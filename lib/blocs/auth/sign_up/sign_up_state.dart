part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpSucces extends SignUpState {}

final class SignUpError extends SignUpState {}

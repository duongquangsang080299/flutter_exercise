part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent {}

class AuthSignInEvent extends SignInEvent {
  final String email;
  final String password;

  AuthSignInEvent({
    required this.email,
    required this.password,
  });
}
